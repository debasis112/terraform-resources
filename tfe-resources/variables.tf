variable "tfe_organization" {
  description = "Organization name for Terraform Cloud."
  type        = string
  default     = "2020WA86256-debasis-project"
}

variable "TFE_MAIL_ID" {
  type        = string
  description = "The email ID for Terraform Cloud"
}

variable "TFE_API_TOKEN" {
  type        = string
  description = "The API token for Terraform Cloud"
  sensitive   = true
}

# variable "tfe_gh_token" {
#   type        = string
#   description = "The PAT token for GitHub"
#   sensitive   = true
# }
