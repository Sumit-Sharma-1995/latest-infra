module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "storage_account" {
  depends_on           = [module.resource_group]
  source               = "../../modules/aurerm_storage_account"
  storage_accounts     = var.storage_accounts

}

module "virtual_networks" {
  depends_on           = [module.resource_group]
  source               = "../../modules/azurerm_virtual_networks"
  virtual_networks     = var.virtual_networks
} 

module "container_registry" {
  depends_on           = [module.resource_group]
  source               = "../../modules/azurerm_container_registry"
  container_registries = var.container_registries
}
module  "aks_cluster" {
  depends_on = [module.resource_group, module.storage_account, module.container_registry]
  source     = "../../modules/azurerm_kubernetes_cluster"
  aks        = var.aks
}


