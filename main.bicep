resource testingStrg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'sp_management_storage'
  location: 'westeurope'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
