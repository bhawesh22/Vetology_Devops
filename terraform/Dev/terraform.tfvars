# ─────────────────────────────────────────────────────────────────────────────
# terraform.tfvars
# All values that drive the infrastructure.
# This file is git-ignored — never commit it with real credentials.
# ─────────────────────────────────────────────────────────────────────────────


resource_group_name = "rg-vetology-devops"
location            = "West US 2"
environment         = "dev"


vnet_name              = "vnet-vetology-dev"
vnet_address_space     = ["10.0.0.0/16"]
subnet_name            = "snet-vetology-dev"
subnet_address_prefixes = ["10.0.1.0/24"]
public_ip_name         = "pip-vetology-dev"
nsg_name               = "nsg-vetology-dev"
nic_name               = "nic-vetology-dev"

ssh_source_address_prefix = "*"
app_port                  = 8081


vm_name             = "vm-vetology-devops"
vm_size             = "Standard_D2als_v7"
admin_username      = "devops"
ssh_public_key_path = "~/.ssh/id_rsa.pub"
os_disk_size_gb     = 30
