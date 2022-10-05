resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  location            = var.vnet-location
  resource_group_name = var.resource-group-name
  address_space       = var.vnet-address-space

  tags = {
    environment = var.prefix
  }
}