resource "azurerm_monitor_data_collection_rule_association" "aks" {
  name                    = format("dcra-%s", var.stack)
  target_resource_id      = azurerm_kubernetes_cluster.aks.id
  data_collection_rule_id = azurerm_monitor_data_collection_rule.aks.id
  description             = "JUNO Association of data collection rule. Deleting this association will break the data collection for this AKS Cluster."
  depends_on = [
    azurerm_monitor_data_collection_rule.aks
  ]
}
