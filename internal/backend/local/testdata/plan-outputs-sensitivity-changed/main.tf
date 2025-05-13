# This is a test fixture for testing output sensitivity changes.

# This output starts non-sensitive, and the test will change it to sensitive
output "sensitive_after" {
  value = "after"
  # sensitive = true # This line would be uncommented to test the change
}

# This output starts sensitive, and the test will change it to non-sensitive
output "sensitive_before" {
  value = "after"
  sensitive = true
}

# Regular output unchanged, to verify it doesn't show up in the plan
output "unchanged" {
  value = "before"
}

# This output's value changes, to verify it shows up in the plan
output "changed" {
  value = "after"
}

# This output is added, to verify it shows up in the plan
output "added" {
  value = "after"
}