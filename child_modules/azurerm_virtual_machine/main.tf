resource "azurerm_linux_virtual_machine" "vm" {

  name                = "sumit-vm"
  resource_group_name = "rg-sumit"
  location            = "centralindia"
  size                = "Standard_B2s"   

  admin_username = data.azurerm_key_vault_secret.vm_username[each.key].value
  admin_password = data.azurerm_key_vault_secret.vm_password[each.key].value

  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
