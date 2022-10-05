resource "azurerm_subnet" "subnet" {
  name                 = var.subnet-name
  resource_group_name  = var.subnet-rg
  virtual_network_name = var.subnet-vnet-name
  address_prefixes     = var.subnet-address-prefixes
}