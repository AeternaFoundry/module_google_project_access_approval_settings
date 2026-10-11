variable "project_access_approval_settings" {
  description = <<EOT
Map of project_access_approval_settings, attributes below
Required:
    - project_id
    - enrolled_services (block):
        - cloud_product (required)
        - enrollment_level (optional)
Optional:
    - active_key_version
    - deletion_policy
    - notification_emails
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    project_id          = string
    active_key_version  = optional(string)
    deletion_policy     = optional(string)
    notification_emails = optional(set(string))
    project             = optional(string)
    enrolled_services = list(object({
      cloud_product    = string
      enrollment_level = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.project_access_approval_settings : (
        length(v.enrolled_services) >= 1
      )
    ])
    error_message = "Each enrolled_services list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

