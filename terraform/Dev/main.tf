

# ─── Local values ─────────────────────────────────────────────────────────────

locals {
  common_tags = {
    project     = "vetology-devops"
    environment = var.environment
    managed_by  = "terraform"
  }
}

module "resource_group" {
  source = "../modules/resource_group"

  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}



module "compute" {
  source = "../modules/compute"

  resource_group_name       = module.resource_group.name
  location                  = module.resource_group.location
  tags                      = local.common_tags

  vnet_name                 = var.vnet_name
  vnet_address_space        = var.vnet_address_space
  subnet_name               = var.subnet_name
  subnet_address_prefixes   = var.subnet_address_prefixes
  public_ip_name            = var.public_ip_name
  nsg_name                  = var.nsg_name
  nic_name                  = var.nic_name
  ssh_source_address_prefix = var.ssh_source_address_prefix
  app_port                  = var.app_port

  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key_path = var.ssh_public_key_path
  os_disk_size_gb     = var.os_disk_size_gb
}
