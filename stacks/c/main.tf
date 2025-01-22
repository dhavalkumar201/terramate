## Hot Storage accounts
resource "azurerm_storage_account" "hot-storage" {
  name                              = substr("${var.env}${var.prefix}hotstorage", 0, min(length("${var.env}${var.prefix}hotstorage"), 24))
  resource_group_name               = var.rg_name
  location                          = var.location
  account_tier                      = "Standard"
  account_replication_type          = "GRS"
  account_kind                      = "StorageV2"
  access_tier                       = "Hot"
  tags                              = local.tags
  allow_nested_items_to_be_public   = false
  infrastructure_encryption_enabled = true
  public_network_access_enabled = false
}

locals {
  tags = {
    "Administrator"     = "Dhaval Vaghela",
    "BU"       = "PES",
    "Delivery Manager" = "Shahid Raza",
    "Environment"       = var.env,
    "Creation date" = "22-01-2025"
  }
}