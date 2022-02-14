var roleDefinitionResourceId_contr  = '/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c'
var roleDefinitionResourceId_reader  = '/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7'
var principalId  = '21843d93-c691-49e6-a43b-d0a1ed1c1f7a'
var managedIdentityName = 'user-man-id'


resource testingStrg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'spstorage6w75eauwdifum'
  location: 'westeurope'
  kind: 'StorageV2'
  sku: {
   name:'Standard_LRS'
  }
}

resource testingStrg2 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'strg6w75eauwdifum'
  location: 'westeurope'
    kind: 'StorageV2'
    sku: {
        name: 'Standard_LRS'
    }
}

resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: managedIdentityName
  location: 'westeurope'
}


// resource roleAssignment_manag 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  
//   scope: managedIdentity
//   name: guid(resourceGroup().id, managedIdentity.id, roleDefinitionResourceId_contr)
//   properties: {
//     roleDefinitionId: roleDefinitionResourceId_contr
//     principalId: managedIdentity.properties.principalId
//     principalType: 'ServicePrincipal'
//     description: 'the user managed identity shall edit the storage account.'
//   }
// }


// resource roleAssignment_storage 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' ={
//   scope: testingStrg
//   name: guid(testingStrg.id, principalId, roleDefinitionResourceId_reader)
//   properties: {
//     roleDefinitionId: roleDefinitionResourceId_reader
//     principalId: principalId
//     principalType: 'ServicePrincipal'
//     description: 'I want the thing to read'
//   }
// }
