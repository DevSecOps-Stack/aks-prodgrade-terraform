output "aks_cluster_name" {
  value = module.aks_cluster.name
}

output "vm_name" {
  value = module.virtual_machine.name
}

output "vm_username" {
  value = module.virtual_machine.username
}
