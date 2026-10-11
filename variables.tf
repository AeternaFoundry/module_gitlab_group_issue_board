variable "group_issue_boards" {
  description = <<EOT
Map of group_issue_boards, attributes below
Required:
    - group
    - name
Optional:
    - labels
    - milestone_id
    - lists (block):
        - label_id (optional)
        - position (optional)
EOT

  type = map(object({
    group        = string
    name         = string
    labels       = optional(set(string))
    milestone_id = optional(number)
    lists = optional(list(object({
      label_id = optional(number)
      position = optional(number)
    })))
  }))
}

