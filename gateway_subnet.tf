

# Creates a Gateway Subnet in the homelab vnet. 
resource "azurerm_subnet" "gatewaySubnet" {
  name                 = "GatewaySubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.homelab-network.name
  address_prefixes     = ["10.0.1.0/27"]

}