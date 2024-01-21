 import CryptoPoops from 0x06
 import NonFungibleToken from 0x05

pub fun main(account: Address): [UInt64] {
  let publicReference = getAccount(account).getCapability(/public/Collection)
                                     .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                                   ?? panic("This account does not have a Collection")
  
  return publicReference.getIDs()
}
 
