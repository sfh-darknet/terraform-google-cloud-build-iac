# ----------------------------------------------------------------------------------------------------------------------
# SET TERRAFORM AND PROVIDER REQUIREMENTS FOR RUNNING THIS MODULE
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = "~> 1.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.0"
    }
  }
}
