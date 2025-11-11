terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "anupam_rg_dont_delete"
    storage_account_name = "stgannu2112"
    container_name       = "stgannu2112"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d7b038b3-220d-47fb-8d8a-df373fd719c8"
}
