## create bicep registry
```
az acr create --name 'adotfrankLearnLive' --sku Basic -g brittle-hollow
```

## push module to registry

```
az bicep publish --file website.bicep --target 'br:adotfrankLearnLive.azurecr.io/website:v1'
```

* aliases configured via bicep config will also be picked up here

## use the module

Add module to main bicep file

Build the file:
```
az bicep build --file '02-consume-module.bicep'
```

Add an alias via bicep config

Replace module definition



## deploy the file

```
az deployment group create -f '02-consume-module.bicep'
```