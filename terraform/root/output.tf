output "cluster_name" {
  value = module.aks_deployment.cluster_name
}

output "kube_config" {
  value     = module.aks_deployment.kube_config
  sensitive = true
}
