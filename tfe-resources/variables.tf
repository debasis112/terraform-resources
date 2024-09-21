variable "tfe_organization" {
  description = "Organization name for Terraform Cloud."
  type        = string
  default = "debasis-project-dissertation"
}

variable "tfe_mail_id" {
  type        = string
  description = "The email ID for Terraform Cloud"
}

variable "tfe_api_token" {
  type        = string
  description = "The API token for Terraform Cloud"
  sensitive   = true
}
