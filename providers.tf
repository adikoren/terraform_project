terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
   features {}
   subscription_id = "d6c8d337-3ebc-4622-93d2-90cc522d0662"
}

