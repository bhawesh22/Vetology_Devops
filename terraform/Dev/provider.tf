terraform {
  required_version = ">= 1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-vetology-tfstate"
    storage_account_name = "stvetologytfstate"
    container_name       = "tfstate"
    key                  = "vetology.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2bb07919-cc87-44b8-bf0a-8447020293e8"
}