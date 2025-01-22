terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "2.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sa1_test_eic_DhavalVaghela"
    storage_account_name = "terramatebackenddp"
    container_name       = "terramatebackenddpb"
    key                  = "terramate.terraform.tfstate"
  }
}

provider "azurerm" {
  # subscription_id = "e1231fd8-853d-4f48-80b3-6fdc695638e7"
  features {}
}
provider "null" {}
provider "template" {}
