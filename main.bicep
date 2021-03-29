resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'unique${take(guid(resourceGroup().id), 6)}'
  location: 'eastus'
  kind: 'Storage'
  sku: {
    name: 'Standard_LRS'
  }
}

resource second 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'second${take(guid(resourceGroup().id), 6)}'
  location: 'eastus'
  kind: 'Storage'
  sku: {
    name: 'Standard_LRS'
  }
}
