# Creates subnets within the homelab virtual network. 
resource "azurerm_subnet" "publicSubnet01" {
  name                 = "homelab-public-subnet01"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.homelab-network.name
  address_prefixes     = ["10.0.2.0/24"]
}
