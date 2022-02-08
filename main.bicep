resource testingStrg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'spstorage'
  location: 'westeurope'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
