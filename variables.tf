variable "config_organization_managed_rules" {
  description = <<EOT
Map of config_organization_managed_rules, attributes below
Required:
    - name
    - rule_identifier
Optional:
    - description
    - excluded_accounts
    - input_parameters
    - maximum_execution_frequency
    - region
    - resource_id_scope
    - resource_types_scope
    - tag_key_scope
    - tag_value_scope
EOT

  type = map(object({
    name                        = string
    rule_identifier             = string
    description                 = optional(string)
    excluded_accounts           = optional(set(string))
    input_parameters            = optional(string)
    maximum_execution_frequency = optional(string)
    region                      = optional(string)
    resource_id_scope           = optional(string)
    resource_types_scope        = optional(set(string))
    tag_key_scope               = optional(string)
    tag_value_scope             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.config_organization_managed_rules : (
        v.input_parameters == null || ((length(v.input_parameters) >= 0 && length(v.input_parameters) <= 2048) && (can(jsondecode(v.input_parameters))))
      )
    ])
    error_message = "all of: must be between 0 and 2048 characters; must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_managed_rules : (
        v.resource_id_scope == null || (length(v.resource_id_scope) >= 0 && length(v.resource_id_scope) <= 768)
      )
    ])
    error_message = "must be between 0 and 768 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_managed_rules : (
        v.resource_types_scope == null || (alltrue([for x in v.resource_types_scope : length(x) >= 0 && length(x) <= 256]))
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_managed_rules : (
        length(v.rule_identifier) >= 1 && length(v.rule_identifier) <= 256
      )
    ])
    error_message = "must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_managed_rules : (
        v.tag_key_scope == null || (length(v.tag_key_scope) >= 0 && length(v.tag_key_scope) <= 128)
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_managed_rules : (
        v.tag_value_scope == null || (length(v.tag_value_scope) >= 0 && length(v.tag_value_scope) <= 256)
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

