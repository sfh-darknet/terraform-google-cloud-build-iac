locals {
  service_accounts_map = { for sa in var.service_accounts : sa.account_id => sa }
}

module "service_account" {
  source = "github.com/mineiros-io/terraform-google-service-account?ref=v0.0.11"

  for_each = local.service_accounts_map

  module_enabled = var.module_enabled

  project      = var.project_id
  account_id   = each.value.account_id
  display_name = try(each.value.display_name, each.value.account_id)
  description  = try(each.value.description, "Cloud build access per project")

  module_depends_on = var.module_depends_on
}
