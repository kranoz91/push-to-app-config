param configstoreName string
param location string = resourceGroup().location

resource appConfig 'Microsoft.AppConfiguration/configurationStores@2022-05-01' = {
  name: configstoreName
  location: location
  sku: {
    name: 'Free'
  }
  properties: {
    createMode: 'Default'
  }
}

output variableA string = 'someValue'
