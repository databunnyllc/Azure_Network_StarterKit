
# Creates a virtual network for the homelab. 
resource "azurerm_virtual_network" "homelab-network" {
  name                = "homelab-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
}