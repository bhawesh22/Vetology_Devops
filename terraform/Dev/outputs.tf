output "vm_public_ip" {
  description = "Public IP address of the DevOps VM"
  value       = module.compute.vm_public_ip
}
