output "name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "Location of the created resource group"
  value       = azurerm_resource_group.rg.location
}

output "id" {
  description = "Resource ID of the resource group"
  value       = azurerm_resource_group.rg.id
}
