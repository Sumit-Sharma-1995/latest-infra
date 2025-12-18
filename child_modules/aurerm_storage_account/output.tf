output "stg_id" {
  value = { for k, v in azurerm_storage_account.storage_accounts : k => v.id }
}