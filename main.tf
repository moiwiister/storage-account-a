terraform {
    cloud {
        organization = "ALEXANDREDEBARGIS-training"

        workspaces {
            name = ""
        }
    }
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 3.59.0"
        }
    }
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}

resource "azurerm_storage_account" "example" {
  name                     = var.stg_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = {
    environment = var.environment
  }
}