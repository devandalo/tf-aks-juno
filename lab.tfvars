# global
location       = "norwayeast"
location_short = "noe"
stack          = "aks-green"
project        = "juno"
environment    = "lab"

# aks
private_cluster_enabled = false
sku_tier                = "Free"
kubernetes_version      = "1.29"

# default node-pool
default_np_name                 = "system"
default_np_size                 = "Standard_D2_v2"
default_np_orchestrator_version = "1.29"
default_np_zones                = ["1"]


#data
# acr_name                = "acrjunolabnoe"
# acr_resource_group_name = "rg-acr-juno-lab-noe"
amw_name                = "amw-juno-lab-noe"
amw_resource_group_name = "rg-observability-juno-lab-noe"
