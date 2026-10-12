output "workspace_ids_lookup_id" {
  description = "Map of id values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspace_ids_lookup_exclude_tags" {
  description = "Map of exclude_tags values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no exclude_tags are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => v.exclude_tags if v.exclude_tags != null && length(v.exclude_tags) > 0 }
}
output "workspace_ids_lookup_full_names" {
  description = "Map of full_names values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no full_names are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => v.full_names if v.full_names != null && length(v.full_names) > 0 }
}
output "workspace_ids_lookup_ids" {
  description = "Map of ids values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no ids are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "workspace_ids_lookup_names" {
  description = "Map of names values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no names are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "workspace_ids_lookup_organization" {
  description = "Map of organization values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no organization are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "workspace_ids_lookup_tag_filters" {
  description = "Map of tag_filters values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no tag_filters are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => one(v.tag_filters) if v.tag_filters != null && length(v.tag_filters) > 0 }
}
output "workspace_ids_lookup_tag_names" {
  description = "Map of tag_names values across all workspace_ids_lookup, keyed the same as var.workspace_ids_lookup except keys with no tag_names are omitted"
  value       = { for k, v in data.tfe_workspace_ids.workspace_ids_lookup : k => v.tag_names if v.tag_names != null && length(v.tag_names) > 0 }
}

