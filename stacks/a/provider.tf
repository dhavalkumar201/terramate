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
    container_name       = "terramatebackenddp"
    key                  = "terramate.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
  resource_provider_registrations = "none"

  features {}
}
provider "null" {}
provider "template" {}
