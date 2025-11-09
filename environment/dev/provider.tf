terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-dhondu"
    storage_account_name = "tfstatesdhondhuwala"
    container_name       = "tfstates"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c8ae0155-19b9-4306-a16f-ce3e1dab29f4"
}
