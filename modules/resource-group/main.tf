resource "azurerm_resource_group" "resource-group-rg" {
  name     = var.resource-group-name
  location = var.reource-group-location
}