terraform {
    cloud {
        organization = "ALEXANDREDEBARGIS-training"

        workspaces {
            name = "storage-account-a"
        }
    }
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 3.71.0"
        }
    }
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"

  # Connection to Azure
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.stg_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = {
    environment = var.environment
    tag2 = "value2"
    tag3 = "value3"
    tag4 = "value4"
  }
}