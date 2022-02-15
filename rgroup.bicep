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

// resource LApp 'Microsoft.Logic/workflows@2019-05-01' = {
//   name: 'mylappfortests'
//   location: defloc
//   identity: {
//     type: 'UserAssigned'
//     userAssignedIdentities: {
//       '/subscriptions/9bf29025-6542-4c65-8b12-e6b6c88a87d1/resourceGroups/rg-testing-sp/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-man-id': {}
//     }
//   }
//   properties: {
//     definition: {}
//   }
// }
