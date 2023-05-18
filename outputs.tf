output "aks_cluster_name" {
  value = module.aks_cluster.name
}

output "vm_user_name" {
  value = module.virtual_machine.username
}

#output "vm_name" {
  #value = module.virtual_machine.name
#}
