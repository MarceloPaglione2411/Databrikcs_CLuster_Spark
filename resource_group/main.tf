resource "azurerm_resource_group" "mod-rg" {
  name     = var.rg_name
  location = var.rg_location
}
