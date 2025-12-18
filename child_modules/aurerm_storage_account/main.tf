resource "azurerm_storage_account" "stgsumit123" {
    for_each = var.storage_accounts
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.locationt_tier
  account_replication_type = each.value.locationt_replication_type
  access_tier              = each.value.access_tier

  tags = each.value.tags
}