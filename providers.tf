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
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
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
