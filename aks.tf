resource "azurerm_kubernetes_cluster" "aks" {
  depends_on                          = [azurerm_resource_group.aks]
  resource_group_name                 = azurerm_resource_group.aks.name
  location                            = azurerm_resource_group.aks.location
  name                                = format("aks-%s-%s-%s-%s", var.project, var.environment, var.deployment_type, var.location_short)
  node_resource_group                 = format("%s-nodes", azurerm_resource_group.aks.name)
  private_cluster_enabled             = var.private_cluster_enabled
  dns_prefix                          = var.environment
  kubernetes_version                  = var.kubernetes_version
  sku_tier                            = var.sku_tier
  oidc_issuer_enabled                 = true
  workload_identity_enabled           = true
  http_application_routing_enabled    = false
  private_cluster_public_fqdn_enabled = false
  run_command_enabled                 = false
  local_account_disabled              = true
  azure_policy_enabled                = true
  image_cleaner_enabled               = true
  tags                                = local.tags
  private_dns_zone_id                 = var.private_dns_zone_id

  default_node_pool {
    name                 = var.default_np_name
    vm_size              = var.default_np_size
    orchestrator_version = var.default_np_orchestrator_version
    zones                = var.default_np_zones
  }
}
