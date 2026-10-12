variable "workspace_ids_lookup" {
  description = <<EOT
Map of workspace_ids_lookup, attributes below
Optional:
    - exclude_tags
    - names
    - organization
    - tag_names
    - tag_filters (block):
        - exclude (optional)
        - include (optional)
EOT

  type = map(object({
    exclude_tags = optional(set(string))
    names        = optional(list(string))
    organization = optional(string)
    tag_names    = optional(list(string))
    tag_filters = optional(object({
      exclude = optional(map(string))
      include = optional(map(string))
    }))
  }))
}

