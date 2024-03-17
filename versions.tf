terraform {
  required_version = ">=1.7.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
  backend "azurerm" {
    # use_oidc         = true
    # use_azuread_auth = true
  }
}

provider "azurerm" {
  features {}
}
