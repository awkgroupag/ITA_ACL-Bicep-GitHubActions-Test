var managedIdentityName = 'user-man-id'

param defloc string = 'westeurope'


resource testingStrg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'spstorage6w75eauwdifum'
  location: defloc
  kind: 'StorageV2'
  sku: {
   name:'Standard_LRS'
  }
}

resource testingStrg2 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'strg6w75eauwdifum'
  location: defloc
    kind: 'StorageV2'
    sku: {
        name: 'Standard_LRS'
    }
}

resource usermanagedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: managedIdentityName
  location: defloc
}

resource LApp 'Microsoft.Logic/workflows@2019-05-01' = {
  name: 'mylappfortests'
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: usermanagedIdentity
  }
}
