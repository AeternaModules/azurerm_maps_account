output "maps_accounts" {
  description = "All maps_account resources"
  value       = azurerm_maps_account.maps_accounts
  sensitive   = true
}
output "maps_accounts_cors" {
  description = "List of cors values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.cors]
}
output "maps_accounts_data_store" {
  description = "List of data_store values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.data_store]
}
output "maps_accounts_identity" {
  description = "List of identity values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.identity]
}
output "maps_accounts_local_authentication_enabled" {
  description = "List of local_authentication_enabled values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.local_authentication_enabled]
}
output "maps_accounts_location" {
  description = "List of location values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.location]
}
output "maps_accounts_name" {
  description = "List of name values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.name]
}
output "maps_accounts_primary_access_key" {
  description = "List of primary_access_key values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.primary_access_key]
  sensitive   = true
}
output "maps_accounts_resource_group_name" {
  description = "List of resource_group_name values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.resource_group_name]
}
output "maps_accounts_secondary_access_key" {
  description = "List of secondary_access_key values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.secondary_access_key]
  sensitive   = true
}
output "maps_accounts_sku_name" {
  description = "List of sku_name values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.sku_name]
}
output "maps_accounts_tags" {
  description = "List of tags values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.tags]
}
output "maps_accounts_x_ms_client_id" {
  description = "List of x_ms_client_id values across all maps_accounts"
  value       = [for k, v in azurerm_maps_account.maps_accounts : v.x_ms_client_id]
}

