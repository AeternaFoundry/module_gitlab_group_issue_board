resource "gitlab_group_issue_board" "group_issue_boards" {
  for_each = var.group_issue_boards

  group        = each.value.group
  name         = each.value.name
  labels       = each.value.labels
  milestone_id = each.value.milestone_id

  dynamic "lists" {
    for_each = each.value.lists != null ? each.value.lists : []
    content {
      label_id = lists.value.label_id
      position = lists.value.position
    }
  }
}

