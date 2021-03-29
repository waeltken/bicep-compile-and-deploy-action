resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'unique-${guid(resourceGroup().id)}'
  location: 'eastus'
  kind: 'Storage'
  sku: {
    name: 'Standard_LRS'
  }
}
