## create bicep registry
```
az acr create --name 'adotfrankLearnLive' --sku Basic -g learnlive-registries
```

## push module to registry

```
az bicep publish --file website.bicep --target 'br:adotfrankLearnLive.azurecr.io/website:v1'
```

Show module is available:
```
az acr repository list -n adotfrankLearnLive -o table
```

Can also use the docker container tools extension.

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
az deployment group create -f 'main.bicep'
```