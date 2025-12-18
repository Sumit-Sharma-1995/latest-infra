resource "azurerm_subnet" "subnet" {
  for_each = var.subnet

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_network       = each.value.vnet
  address_prefixes      = each.value.address_prefixes
}`