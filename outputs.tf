output "postgresql_flexible_server_active_directory_administrators_object_id" {
  description = "Map of object_id values across all postgresql_flexible_server_active_directory_administrators, keyed the same as var.postgresql_flexible_server_active_directory_administrators"
  value       = { for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : k => v.object_id }
}
output "postgresql_flexible_server_active_directory_administrators_principal_name" {
  description = "Map of principal_name values across all postgresql_flexible_server_active_directory_administrators, keyed the same as var.postgresql_flexible_server_active_directory_administrators"
  value       = { for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : k => v.principal_name }
}
output "postgresql_flexible_server_active_directory_administrators_principal_type" {
  description = "Map of principal_type values across all postgresql_flexible_server_active_directory_administrators, keyed the same as var.postgresql_flexible_server_active_directory_administrators"
  value       = { for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : k => v.principal_type }
}
output "postgresql_flexible_server_active_directory_administrators_resource_group_name" {
  description = "Map of resource_group_name values across all postgresql_flexible_server_active_directory_administrators, keyed the same as var.postgresql_flexible_server_active_directory_administrators"
  value       = { for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : k => v.resource_group_name }
}
output "postgresql_flexible_server_active_directory_administrators_server_name" {
  description = "Map of server_name values across all postgresql_flexible_server_active_directory_administrators, keyed the same as var.postgresql_flexible_server_active_directory_administrators"
  value       = { for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : k => v.server_name }
}
output "postgresql_flexible_server_active_directory_administrators_tenant_id" {
  description = "Map of tenant_id values across all postgresql_flexible_server_active_directory_administrators, keyed the same as var.postgresql_flexible_server_active_directory_administrators"
  value       = { for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : k => v.tenant_id }
}

