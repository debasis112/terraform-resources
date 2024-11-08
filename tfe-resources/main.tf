// tfe auth creation
resource "tfe_oauth_client" "auth-01" {
  organization     = var.tfe_organization
  api_url          = var.api_url
  http_url         = var.http_url
  oauth_token      = var.TFE_GH_TOKEN
  service_provider = var.service_provider
}

######################
# tfe Projects lists #
######################
resource "tfe_project" "ps-01" {
  organization = var.tfe_organization
  name         = "azure-authentication"
}

resource "tfe_project" "ps-02" {
  organization = var.tfe_organization
  name         = "azure-cloud-setup"
}

#######################
# tfe Workspace lists #
#######################

resource "tfe_workspace" "ws-01" {
  name              = "azure-authentication-ws-01"
  organization      = var.tfe_organization
  queue_all_runs    = false
  project_id        = tfe_project.ps-01.id
  working_directory = "/azure-resources"
  vcs_repo {
    branch         = var.tfe_branch
    identifier     = "debasis112/azure-autentication"
    oauth_token_id = tfe_oauth_client.auth-01.oauth_token_id
  }
}

resource "tfe_workspace" "ws-02" {
  name              = "azure-cloud-setup-ws-02"
  organization      = var.tfe_organization
  queue_all_runs    = false
  project_id        = tfe_project.ps-02.id
  working_directory = "/resources"
  vcs_repo {
    branch         = var.tfe_branch
    identifier     = "debasis112/azure-cloud-setup"
    oauth_token_id = tfe_oauth_client.auth-01.oauth_token_id
  }
}
