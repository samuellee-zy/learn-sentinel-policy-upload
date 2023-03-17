data "tfe_workspace_ids" "sentinel" {
  organization = var.orgName
  tag_names    = ["sentinel"]
}

data "tfe_oauth_client" "samuellee-dev-tfc-github-client" {
  organization = var.orgName
  name         = "samuellee-zy-github-oauth"
}
