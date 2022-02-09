param roleDefinitionResourceId string = 'b24988ac-6180-42a0-ab88-20f7382dd24c'

var managedIdentityName = 'user-man-id'

resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: managedIdentityName
  location: 'westeurope'
}

// resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
//   name: guid(resourceGroup().id, managedIdentity.id, roleDefinitionResourceId)
//   properties: {
//     roleDefinitionId: roleDefinitionResourceId
//     principalId: managedIdentity.properties.principalId
//     principalType: 'ServicePrincipal'
//   }
// }
