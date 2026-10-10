output "config_organization_managed_rules_id" {
  description = "Map of id values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_organization_managed_rules_arn" {
  description = "Map of arn values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "config_organization_managed_rules_description" {
  description = "Map of description values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "config_organization_managed_rules_excluded_accounts" {
  description = "Map of excluded_accounts values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.excluded_accounts if v.excluded_accounts != null && length(v.excluded_accounts) > 0 }
}
output "config_organization_managed_rules_input_parameters" {
  description = "Map of input_parameters values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.input_parameters if v.input_parameters != null && length(v.input_parameters) > 0 }
}
output "config_organization_managed_rules_maximum_execution_frequency" {
  description = "Map of maximum_execution_frequency values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.maximum_execution_frequency if v.maximum_execution_frequency != null && length(v.maximum_execution_frequency) > 0 }
}
output "config_organization_managed_rules_name" {
  description = "Map of name values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_organization_managed_rules_region" {
  description = "Map of region values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "config_organization_managed_rules_resource_id_scope" {
  description = "Map of resource_id_scope values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.resource_id_scope if v.resource_id_scope != null && length(v.resource_id_scope) > 0 }
}
output "config_organization_managed_rules_resource_types_scope" {
  description = "Map of resource_types_scope values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.resource_types_scope if v.resource_types_scope != null && length(v.resource_types_scope) > 0 }
}
output "config_organization_managed_rules_rule_identifier" {
  description = "Map of rule_identifier values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.rule_identifier if v.rule_identifier != null && length(v.rule_identifier) > 0 }
}
output "config_organization_managed_rules_tag_key_scope" {
  description = "Map of tag_key_scope values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.tag_key_scope if v.tag_key_scope != null && length(v.tag_key_scope) > 0 }
}
output "config_organization_managed_rules_tag_value_scope" {
  description = "Map of tag_value_scope values across all config_organization_managed_rules, keyed the same as var.config_organization_managed_rules"
  value       = { for k, v in aws_config_organization_managed_rule.config_organization_managed_rules : k => v.tag_value_scope if v.tag_value_scope != null && length(v.tag_value_scope) > 0 }
}

