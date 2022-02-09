param roleDefinitionResourceId string = 'acdd72a7-3385-48ef-bd42-f606fba81ae7'
param principalId string = '1baeee5f-74b0-4a46-b90b-11f818c8095b'


resource testingStrg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'spstoragespstorage6w75eauwdifum'
  location: 'westeurope'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}


resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-08-01-preview' ={
  scope: testingStrg
  name: guid(testingStrg.id, principalId, roleDefinitionResourceId)
  properties: {
    roleDefinitionId: roleDefinitionResourceId
    principalId: principalId
    principalType: 'ServicePrincipal'
  }
}
