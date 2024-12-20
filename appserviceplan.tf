resource "azurerm_service_plan" "fe-asp" {
  name                = "appserviceplan-frontend"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "B1"
  depends_on = [
    azurerm_subnet.fe-subnet
  ]
}



resource "azurerm_service_plan" "be-asp" {
  name                = "appserviceplan-backend"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "B1"
  depends_on = [
    azurerm_subnet.be-subnet
  ]
}