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
  subscription_id = "08c1a718-38f5-4e27-aa97-805a24a827a6"
  client_id       = "f7c46375-3af5-4aeb-b4a9-6b1d8fa12165"
  client_secret   = var.client_secret
  tenant_id       = "4c6f1364-8db1-4e57-95ef-b3cf7dd7d4c9"
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
