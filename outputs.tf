# ----------------------------------------------------------------------------------------------------------------------
# OUTPUT ALL RESOURCES AS FULL OBJECTS
# ----------------------------------------------------------------------------------------------------------------------
output "service_accounts" {
  description = "All attributes of the created `google_service_account` resources."
  value       = module.service_account
}
