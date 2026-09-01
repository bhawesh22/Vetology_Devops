# ─── Shared ───────────────────────────────────────────────────────────────────

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to all resources"
}

# ─── Networking ───────────────────────────────────────────────────────────────

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes for the subnet"
}

variable "public_ip_name" {
  type        = string
  description = "Name of the public IP resource"
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
}

variable "nic_name" {
  type        = string
  description = "Name of the network interface"
}

variable "ssh_source_address_prefix" {
  type        = string
  description = "Source address prefix allowed for SSH"
}

variable "app_port" {
  type        = number
  description = "Inbound port to open for the webtext application"
}

# ─── Virtual Machine ──────────────────────────────────────────────────────────

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}

variable "vm_size" {
  type        = string
  description = "Azure VM SKU size"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to the SSH public key on the machine running Terraform"
}

variable "os_disk_size_gb" {
  type        = number
  default     = 30
  description = "OS disk size in GB"
}
