variable "postgresql_flexible_server_active_directory_administrators" {
  description = <<EOT
Map of postgresql_flexible_server_active_directory_administrators, attributes below
Required:
    - object_id
    - principal_name
    - principal_type
    - resource_group_name
    - server_name
    - tenant_id
EOT

  type = map(object({
    object_id           = string
    principal_name      = string
    principal_type      = string
    resource_group_name = string
    server_name         = string
    tenant_id           = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_active_directory_administrators : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_active_directory_administrators : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_active_directory_administrators : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_active_directory_administrators : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.object_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_active_directory_administrators : (
        length(v.principal_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_active_directory_administrators : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.tenant_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

