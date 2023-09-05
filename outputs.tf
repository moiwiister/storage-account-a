output "storage_account_id" {
  value       = azurerm_storage_account.storage_account.id
  description = "ID of the storage account."
}

output "storage_account_name1" {
  value       = azurerm_storage_account.storage_account.name
  description = "Name of the storage account."
}
