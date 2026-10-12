data "tfe_workspace_ids" "workspace_ids_lookup" {
  for_each = var.workspace_ids_lookup

  exclude_tags = each.value.exclude_tags
  names        = each.value.names
  organization = each.value.organization
  tag_names    = each.value.tag_names

  dynamic "tag_filters" {
    for_each = each.value.tag_filters != null ? [each.value.tag_filters] : []
    content {
      exclude = tag_filters.value.exclude
      include = tag_filters.value.include
    }
  }
}

