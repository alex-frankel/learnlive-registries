@description('The Azure region into which the resources should be deployed.')
param location string = 'westus3'

@description('The name of the App Service app.')
param appServiceAppName string = 'dog-${uniqueString(resourceGroup().id)}'

@description('The name of the App Service plan SKU.')
param appServicePlanSkuName string = 'F1'

var appServicePlanName = 'toy-dog-plan'

module website 'br:adotfrankLearnLive.azurecr.io/website:v1' = {
  name: 'toy-dog-website'
  params: {
    appServiceAppName: appServiceAppName
    appServicePlanName: appServicePlanName
    appServicePlanSkuName: appServicePlanSkuName
    location: location
  }
}

/*
// with alias
module website 'br/learnLive:website:v1' = {
  name: 'toy-dog-website'
  params: {
    appServiceAppName: appServiceAppName
    appServicePlanName: appServicePlanName
    appServicePlanSkuName: appServicePlanSkuName
    location: location
  }
}
*/
