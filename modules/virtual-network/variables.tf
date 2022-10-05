variable "vnet-name" {
  type        = string
  description = "This is the name of the virtual network"
}
variable "vnet-location" {
  type        = string
  description = "This is the virtual network location"
}
variable "vnet-resource-group-name" {
  type        = string
  description = "The is the resource group name"
}
variable "vnet-address-space" {
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
  type       = string
  decription = "This is the vnet environment prefix value"
}