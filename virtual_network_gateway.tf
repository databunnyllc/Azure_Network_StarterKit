# Creates a Public IP address, grabbed dynamically from Azure. 
resource "azurerm_public_ip" "homelabPublicIp" {
  name                = "homelab_public_ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
}

# Creates a virtual network gateway. 
resource "azurerm_virtual_network_gateway" "vgw" {
  name                = "homelab-vgw"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "Basic"

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = azurerm_public_ip.homelabPublicIp.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.gatewaySubnet.id
  }
}