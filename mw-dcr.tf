# resource "azurerm_monitor_data_collection_rule" "aks" {
#   name                        = format("dce-%s", var.stack)
#   resource_group_name         = module.rg.name
#   location                    = module.rg.location
#   data_collection_endpoint_id = azurerm_monitor_data_collection_endpoint.aks.id
#   kind                        = "Linux"

#   destinations {
#     monitor_account {
#       monitor_account_id = azurerm_monitor_workspace.amw.id
#       name               = "JunoMonitoringAccount1"
#     }
#   }

#   data_flow {
#     streams      = ["Microsoft-PrometheusMetrics"]
#     destinations = ["JunoMonitoringAccount1"]
#   }

#   data_sources {
#     prometheus_forwarder {
#       streams = ["Microsoft-PrometheusMetrics"]
#       name    = "JunoPrometheusDataSource"
#     }
#   }

#   description = "JUNO DCR for Azure Monitor Metrics Profile (Managed Prometheus)"
#   depends_on = [
#     azurerm_monitor_data_collection_endpoint.aks
#   ]

# }
