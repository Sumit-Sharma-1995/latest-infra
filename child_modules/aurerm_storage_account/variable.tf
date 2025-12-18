variable "storage_accounts" {
    type = map(object({
        name                     = string
        resource_group_name      = string
        location                 = string
        account_tier             = string
        account_replication_type = string
        access_tier              = string
        tags                     = map(string)
    }))
  
}