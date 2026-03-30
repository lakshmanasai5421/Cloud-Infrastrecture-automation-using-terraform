module "resource_group" {
  source = "./modules/resource_group"
  name   = var.resource_group_name
  location = var.location
}

module "app_service" {
  source = "./modules/app_service"
  resource_group_name = module.resource_group.name
  location = var.location
  app_service_name = var.app_service_name
}

module "cosmosdb" {
  source = "./modules/cosmosdb"
  resource_group_name = module.resource_group.name
  location = var.location
  cosmos_account_name = var.cosmos_account_name
}
