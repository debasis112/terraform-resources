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

variable "api_url" {
  type        = string
  description = "The api url for GitHub"
  default     = "https://api.github.com"
}

variable "http_url" {
  type        = string
  description = "The http url for GitHub"
  default     = "https://github.com"
}

variable "service_provider" {
  type        = string
  description = "The service provider is GitHub"
  default     = "github"
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
