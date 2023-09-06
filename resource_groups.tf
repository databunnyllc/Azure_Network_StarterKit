

# Creates a resource group called, homelab-rg.
resource "azurerm_resource_group" "rg" {
  name     = "homelab-rg"
  location = "East US"
}