#create variable for the resource group
variable "rg_tr_westus" {
  description = "Name of the Resource Group"
  type        = string
  default     = "rg-tr-westus"
}

#create variable for the virtual network
variable "vnet_tr_westus" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "vnet-tr-westus"
}



variable "name_prefix" {
  default     = "postgresqlfs"
  description = "Prefix of the resource name."
}

variable "location" {
  default     = "westus"
  description = "Location of the resource."
}

variable "subscription_id" {
    type = string
    default = "d6c8d337-3ebc-4622-93d2-90cc522d0662"
}