resource "azurerm_network_interface" "sumitnic" {
  name                = "sumit-nic"
  location            = "centralindia"
  resource_group_name = "rg-sumit"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sumit_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}