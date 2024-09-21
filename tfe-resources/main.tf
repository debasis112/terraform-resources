# Create an organization
resource "tfe_organization" "organization-01" {
  name  = var.tfe_organization
  email = var.tfe_mail_id
}
