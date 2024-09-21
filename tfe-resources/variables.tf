variable "tfe_organization" {
  description = "Organization name for Terraform Cloud."
  type        = string
  default     = "debasis-project-dissertation"
}

variable "tfe_branch" {
  type        = string
  description = "The branch for GitHub"
  default     = "main"
  sensitive   = false
}

variable "TFE_API_TOKEN" {
  type        = string
  description = "The API token for Terraform Cloud"
  sensitive   = true
}

variable "TFE_GH_TOKEN" {
  type        = string
  description = "The PAT token for GitHub"
  sensitive   = true
}
