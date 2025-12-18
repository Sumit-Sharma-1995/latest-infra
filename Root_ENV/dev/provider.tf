terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }

#   backend "azurerm" {
#     resource_group_name  = "rg-sumit"
#     storage_account_name = ""
#     container_name       = ""
#     key                  = ""
#   }
}

provider "azurerm" {
  features {}
  subscription_id = ""
}
