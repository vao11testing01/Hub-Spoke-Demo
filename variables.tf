variable "resource_group_name" {
  type        = string
  description = "The is the resource group name"
}
variable "location" {
  description = "Location of the network"
  default     = "uksouth"
}
variable "vnet_address_space" {
  type        = list(any)
  description = "THis is the vnet address space cidr"
  default     = []
}
variable "tags" {
  type        = map(any)
  description = "This is a map of tags"
  default     = {}
}
variable "prefix" {
  type        = string
  description = "This is the vnet environment prefix value"
}

# variable "username" {
#   description = "Username for Virtual Machines"
#   default     = "azureuser"
# }

# variable "password" {
#   description = "Password for Virtual Machines"
# }

# variable "vmsize" {
#   description = "Size of the VMs"
#   default     = "Standard_DS1_v2"
# }