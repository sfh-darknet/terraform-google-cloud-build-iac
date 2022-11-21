# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These variables have defaults, but may be overridden.
# ----------------------------------------------------------------------------------------------------------------------

variable "project_id" {
  description = "(Optional) The project ID. If not specified, terraform uses the ID of the project configured with the provider."
  type        = string
  default     = null
}

variable "service_accounts" {
  type        = any
  description = "(Optional) Service Accounts with corresponding workload identity federation provider attributes."
  default     = []

  validation {
    condition     = alltrue([for x in var.service_accounts : can(x.account_id)])
    error_message = "All record sets must have a defined property called \"account_id\"."
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# ----------------------------------------------------------------------------------------------------------------------

variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether or not to create resources within the module."
  default     = true
}

variable "module_depends_on" {
  type        = any
  description = "(Optional) A list of external resources the module depends on."
  default     = []
}
