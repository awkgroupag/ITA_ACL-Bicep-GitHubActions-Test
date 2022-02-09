resource testingStrg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'spstorage${uniqueString(resourceGroup().id)}'
  location: 'westeurope'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
