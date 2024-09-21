terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.58.1"
    }
  }
}

provider "tfe" {
  hostname = "app.terraform.io"
  token    = var.TFE_API_TOKEN
}