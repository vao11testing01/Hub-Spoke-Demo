resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = var.vnet_address_space

  tags = {
    environment = var.prefix
  }
}