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
    local_authentication_enabled = optional(bool)
    tags                         = optional(map(string))
    cors = optional(object({
      allowed_origins = list(string)
    }))
    data_store = optional(list(object({
      storage_account_id = optional(string)
      unique_name        = string
    })))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.maps_accounts : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.maps_accounts : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.maps_accounts : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.maps_accounts : (
        v.data_store == null || alltrue([for item in v.data_store : (length(item.unique_name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.maps_accounts : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

