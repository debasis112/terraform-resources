variable "tfe_organization" {
  description = "Organization name for Terraform Cloud."
  type        = string
  default     = "debasis-project-dissertation"
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
