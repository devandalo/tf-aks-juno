# data "azurerm_container_registry" "acr" {
#   name                = var.acr_name
#   resource_group_name = var.acr_resource_group_name
# }


data "azurerm_monitor_workspace" "amw" {
  name                = var.amw_name
  resource_group_name = var.amw_resource_group_name
}
