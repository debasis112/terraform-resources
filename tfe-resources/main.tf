// tfe auth creation
resource "tfe_oauth_client" "auth-01" {
  organization     = var.tfe_organization
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.TFE_GH_TOKEN
  service_provider = "github"
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
  name         = "azure-cloud-setup-rsg"
}

resource "tfe_project" "ps-03" {
  organization = var.tfe_organization
  name         = "azure-cloud-setup-sql"
}

resource "tfe_project" "ps-04" {
  organization = var.tfe_organization
  name         = "aws-cloud-setup"
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
  name              = "azure-cloud-setup-rsg-ws-02"
  organization      = var.tfe_organization
  queue_all_runs    = false
  project_id        = tfe_project.ps-02.id
  working_directory = "/resource-group"
  vcs_repo {
    branch         = var.tfe_branch
    identifier     = "debasis112/azure-cloud-setup"
    oauth_token_id = tfe_oauth_client.auth-01.oauth_token_id
  }
}

resource "tfe_workspace" "ws-03" {
  name              = "azure-cloud-setup-sql-ws-03"
  organization      = var.tfe_organization
  queue_all_runs    = false
  project_id        = tfe_project.ps-03.id
  working_directory = "/ms-sql"
  vcs_repo {
    branch         = var.tfe_branch
    identifier     = "debasis112/azure-cloud-setup"
    oauth_token_id = tfe_oauth_client.auth-01.oauth_token_id
  }
}

resource "tfe_workspace" "ws-04" {
  name              = "aws-cloud-setup-ws-04"
  organization      = var.tfe_organization
  queue_all_runs    = false
  project_id        = tfe_project.ps-04.id
  # working_directory = ""
  vcs_repo {
    branch         = var.tfe_branch
    identifier     = "debasis112/aws-cloud-setup"
    oauth_token_id = tfe_oauth_client.auth-01.oauth_token_id
  }
}
