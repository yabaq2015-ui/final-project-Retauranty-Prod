module "aks_deployment" {
  source = "../module"

  cluster_name        = "hussein-restauranty-prod-cluster"
  location            = "eastus"
  resource_group_name = "Hussein-RG"
}
