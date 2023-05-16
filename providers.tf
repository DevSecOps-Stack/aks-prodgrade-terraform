terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.60"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "azurerm" {
  features {}
}

#Generate randon name for all resources
resource "random_string" "resource_suffix" {
  length  = 8
  special = false
  lower   = true
  upper   = false
  number  = false
}

# terraform {
#   backend "azurerm" {
#   }
# }