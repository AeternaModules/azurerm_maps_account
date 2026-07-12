output "maps_accounts_id" {
  description = "Map of id values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.id }
}
output "maps_accounts_cors" {
  description = "Map of cors values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.cors }
}
output "maps_accounts_data_store" {
  description = "Map of data_store values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.data_store }
}
output "maps_accounts_identity" {
  description = "Map of identity values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.identity }
}
output "maps_accounts_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.local_authentication_enabled }
}
output "maps_accounts_location" {
  description = "Map of location values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.location }
}
output "maps_accounts_name" {
  description = "Map of name values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.name }
}
output "maps_accounts_primary_access_key" {
  description = "Map of primary_access_key values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.primary_access_key }
  sensitive   = true
}
output "maps_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.resource_group_name }
}
output "maps_accounts_secondary_access_key" {
  description = "Map of secondary_access_key values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.secondary_access_key }
  sensitive   = true
}
output "maps_accounts_sku_name" {
  description = "Map of sku_name values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.sku_name }
}
output "maps_accounts_tags" {
  description = "Map of tags values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.tags }
}
output "maps_accounts_x_ms_client_id" {
  description = "Map of x_ms_client_id values across all maps_accounts, keyed the same as var.maps_accounts"
  value       = { for k, v in azurerm_maps_account.maps_accounts : k => v.x_ms_client_id }
}

