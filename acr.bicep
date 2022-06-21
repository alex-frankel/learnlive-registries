// alternatively, can use powershell or cli
// az acr create --name 'adotfrankLearnLive' --sku Basic -g brittle-hollow

resource acr 'Microsoft.ContainerRegistry/registries@2022-02-01-preview' = {
  name: 'adotfrankLearnLive'
  #disable-next-line no-loc-expr-outside-params
  location: resourceGroup().location
  sku: {
    name:  'Basic'
  }
}
