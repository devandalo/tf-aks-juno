resource "azurerm_monitor_data_collection_endpoint" "dce" {
  name                = format("dce-%s", var.stack)
  resource_group_name = module.rg.name
  location            = module.rg.location
  kind                = "Linux"
}
