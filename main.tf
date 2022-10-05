module "onprem-vnet-rg" {
  source = "../modules/resource-group"

  name     = local.onprem-resource-group
  location = local.onprem-location
}
module "onprem-vnet" {
  source = "../modules/virtual-network"
}