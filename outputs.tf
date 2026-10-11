output "project_access_approval_settings_id" {
  description = "Map of id values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no id are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_access_approval_settings_active_key_version" {
  description = "Map of active_key_version values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no active_key_version are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.active_key_version if v.active_key_version != null && length(v.active_key_version) > 0 }
}
output "project_access_approval_settings_ancestor_has_active_key_version" {
  description = "Map of ancestor_has_active_key_version values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no ancestor_has_active_key_version are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.ancestor_has_active_key_version if v.ancestor_has_active_key_version != null }
}
output "project_access_approval_settings_deletion_policy" {
  description = "Map of deletion_policy values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "project_access_approval_settings_enrolled_ancestor" {
  description = "Map of enrolled_ancestor values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no enrolled_ancestor are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.enrolled_ancestor if v.enrolled_ancestor != null }
}
output "project_access_approval_settings_enrolled_services" {
  description = "Map of enrolled_services values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no enrolled_services are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.enrolled_services if v.enrolled_services != null && length(v.enrolled_services) > 0 }
}
output "project_access_approval_settings_invalid_key_version" {
  description = "Map of invalid_key_version values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no invalid_key_version are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.invalid_key_version if v.invalid_key_version != null }
}
output "project_access_approval_settings_name" {
  description = "Map of name values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no name are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "project_access_approval_settings_notification_emails" {
  description = "Map of notification_emails values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no notification_emails are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.notification_emails if v.notification_emails != null && length(v.notification_emails) > 0 }
}
output "project_access_approval_settings_project" {
  description = "Map of project values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no project are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_access_approval_settings_project_id" {
  description = "Map of project_id values across all project_access_approval_settings, keyed the same as var.project_access_approval_settings except keys with no project_id are omitted"
  value       = { for k, v in google_project_access_approval_settings.project_access_approval_settings : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

