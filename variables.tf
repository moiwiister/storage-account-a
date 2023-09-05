##############################################################################
# Variables File
#
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "stg_name" {
  description = "Storage account name"
}

variable "location" {
  description = "The location where the resources are created."
  default     = "Canada Central"
}

variable "rg_name" {
  description = "The resource group name"
}

variable "account_tier" {
  description = "The storage account tier."
  default     = "Standard"
}

variable "replication_type" {
  description = "The storage account replication type"
  default     = "LRS"
}

variable "environment" {
  description = "The environment for which this is deployed"
  validation {
    condition     = contains(["dev", "stg", "prd"], var.environment)
    error_message = "Argument 'environment' must one of 'dev', 'stg', or 'prd'."
  }
  default = "dev"
}

variable "client_id" {
  description = "App registration client ID"
}

variable "client_secret" {
  description = "App registration client secret"
}

variable "tenant_id" {
  description = "Azure Tenant ID"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
}