terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }

 backend "azurerm" {
    resource_group_name  = "rg-tf-state"
    storage_account_name = "sttfstate111"
    container_name       = "tfstate"
    key                  = "azure-terraform-foundations.tfstate"
  }



}
