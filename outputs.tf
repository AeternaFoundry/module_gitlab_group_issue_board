output "group_issue_boards_id" {
  description = "Map of id values across all group_issue_boards, keyed the same as var.group_issue_boards except keys with no id are omitted"
  value       = { for k, v in gitlab_group_issue_board.group_issue_boards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_issue_boards_group" {
  description = "Map of group values across all group_issue_boards, keyed the same as var.group_issue_boards except keys with no group are omitted"
  value       = { for k, v in gitlab_group_issue_board.group_issue_boards : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_issue_boards_labels" {
  description = "Map of labels values across all group_issue_boards, keyed the same as var.group_issue_boards except keys with no labels are omitted"
  value       = { for k, v in gitlab_group_issue_board.group_issue_boards : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "group_issue_boards_lists" {
  description = "Map of lists values across all group_issue_boards, keyed the same as var.group_issue_boards except keys with no lists are omitted"
  value       = { for k, v in gitlab_group_issue_board.group_issue_boards : k => v.lists if v.lists != null && length(v.lists) > 0 }
}
output "group_issue_boards_milestone_id" {
  description = "Map of milestone_id values across all group_issue_boards, keyed the same as var.group_issue_boards except keys with no milestone_id are omitted"
  value       = { for k, v in gitlab_group_issue_board.group_issue_boards : k => v.milestone_id if v.milestone_id != null }
}
output "group_issue_boards_name" {
  description = "Map of name values across all group_issue_boards, keyed the same as var.group_issue_boards except keys with no name are omitted"
  value       = { for k, v in gitlab_group_issue_board.group_issue_boards : k => v.name if v.name != null && length(v.name) > 0 }
}

