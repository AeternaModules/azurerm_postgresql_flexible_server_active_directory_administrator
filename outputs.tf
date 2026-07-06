output "postgresql_flexible_server_active_directory_administrators" {
  description = "All postgresql_flexible_server_active_directory_administrator resources"
  value       = azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators
}
output "postgresql_flexible_server_active_directory_administrators_object_id" {
  description = "List of object_id values across all postgresql_flexible_server_active_directory_administrators"
  value       = [for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : v.object_id]
}
output "postgresql_flexible_server_active_directory_administrators_principal_name" {
  description = "List of principal_name values across all postgresql_flexible_server_active_directory_administrators"
  value       = [for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : v.principal_name]
}
output "postgresql_flexible_server_active_directory_administrators_principal_type" {
  description = "List of principal_type values across all postgresql_flexible_server_active_directory_administrators"
  value       = [for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : v.principal_type]
}
output "postgresql_flexible_server_active_directory_administrators_resource_group_name" {
  description = "List of resource_group_name values across all postgresql_flexible_server_active_directory_administrators"
  value       = [for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : v.resource_group_name]
}
output "postgresql_flexible_server_active_directory_administrators_server_name" {
  description = "List of server_name values across all postgresql_flexible_server_active_directory_administrators"
  value       = [for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : v.server_name]
}
output "postgresql_flexible_server_active_directory_administrators_tenant_id" {
  description = "List of tenant_id values across all postgresql_flexible_server_active_directory_administrators"
  value       = [for k, v in azurerm_postgresql_flexible_server_active_directory_administrator.postgresql_flexible_server_active_directory_administrators : v.tenant_id]
}

