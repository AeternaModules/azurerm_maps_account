variable "maps_accounts" {
  description = <<EOT
Map of maps_accounts, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - local_authentication_enabled
    - tags
    - cors (block):
        - allowed_origins (required)
    - data_store (block):
        - storage_account_id (optional)
        - unique_name (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location                     = string
    name                         = string
    resource_group_name          = string
    sku_name                     = string
    local_authentication_enabled = optional(bool, true)
    tags                         = optional(map(string))
    cors = optional(object({
      allowed_origins = list(string)
    }))
    data_store = optional(object({
      storage_account_id = optional(string)
      unique_name        = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
}

