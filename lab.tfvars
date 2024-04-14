# global
location       = "norwayeast"
location_short = "noe"
stack          = "aks"
project        = "juno"
environment    = "lab"

#aks
private_cluster_enabled = false
sku_tier                = "free"
kubernetes_version      = "1.29"

#default node-pool
default_np_name                 = "system"
default_np_size                 = "Standard_D2_v2"
default_np_orchestrator_version = "1.29"
zones                           = [1]
