resource "azurerm_kubernetes_cluster" "aks" {
  resource_group_name                 = module.rg.name
  location                            = module.rg.location
  name                                = format("aks-%s-%s-%s-%s", var.project, var.environment, var.deployment_type, var.location_short)
  node_resource_group                 = format("%s-nodes", module.rg.name)
  sku_tier                            = var.sku_tier
  private_cluster_enabled             = var.private_cluster_enabled
  dns_prefix                          = var.environment
  kubernetes_version                  = var.kubernetes_version
  oidc_issuer_enabled                 = true
  workload_identity_enabled           = true
  http_application_routing_enabled    = false
  private_cluster_public_fqdn_enabled = false
  run_command_enabled                 = false
  local_account_disabled              = true
  tags                                = local.tags

  default_node_pool {
    name                 = var.default_np_name
    vm_size              = var.default_np_size
    orchestrator_version = var.default_np_orchestrator_version
    zones                = var.default_np_zones
  }

  identity {
    type = "SystemAssigned"
  }

  azure_active_directory_role_based_access_control {
    managed                = true
    azure_rbac_enabled     = true
    admin_group_object_ids = var.admin_group_object_ids
  }
}
