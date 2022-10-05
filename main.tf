module "onprem-vnet-rg" {
  source = "./modules/resource-group"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.location
}
module "onprem-vnet" {
  source = "./modules/virtual-network"

  vnet_name                = "${var.prefix}-vnet"
  vnet_location            = var.location
  vnet_resource_group_name = module.onprem-vnet-rg.rg-name
  vnet_address_space       = var.vnet_address_space
  #TODO: Need to refactor, is this extra prefix required?
  prefix = var.prefix
  tags = {
    environment = var.prefix
  }

  depends_on = [
    module.onprem-vnet-rg
  ]

}