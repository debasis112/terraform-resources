# Create an organization
resource "tfe_organization" "organization-01" {
  name  = var.tfe_organization
  email = var.tfe_mail_id
}

# resource "tfe_oauth_client" "auth-01" {
#   organization     = tfe_organization.organization-01.name
#   api_url          = "https://api.github.com"
#   http_url         = "https://github.com"
#   oauth_token      = "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"
#   service_provider = "github"
# }

# resource "tfe_project" "test" {
#   organization = tfe_organization.organization-01.name
#   name         = "test-project-01"
# }

# resource "tfe_workspace" "ws-01" {
#   name              = "test-ws-01"
#   organization      = tfe_organization.organization-01.name
#   queue_all_runs    = false
#   project_id        = tfe_project.test.id
#   working_directory = "/azure"
#   vcs_repo {
#     branch         = "main"
#     identifier     = "debasis112/web-page-test-01"
#     oauth_token_id = tfe_oauth_client.auth-01.oauth_token_id
#   }
# }

# # Add workspace-level variables
# resource "tfe_variable" "var-1" {
#   key          = "test_01"
#   value        = "Debasis"
#   sensitive    = false
#   category     = "env"                  # can be "env", "terraform", or "secret"
#   workspace_id = tfe_workspace.ws-01.id # optional for workspace variables
# }

# # Create organization-level Variable set
# resource "tfe_variable_set" "test" {
#   name         = "Test Varset"
#   description  = "Test variable."
#   global       = true
#   organization = tfe_organization.organization-01.name
# }

# # Org variable set-01
# resource "tfe_variable" "test-a" {
#   key             = "seperate_variable_01"
#   value           = "my_value_name_01"
#   category        = "terraform"
#   description     = "a useful description"
#   variable_set_id = tfe_variable_set.test.id
# }

# # Org variable set-01
# resource "tfe_variable" "test-b" {
#   key             = "another_variable_01"
#   value           = "my_value_name_01"
#   category        = "env"
#   description     = "an environment variable"
#   variable_set_id = tfe_variable_set.test.id
# }