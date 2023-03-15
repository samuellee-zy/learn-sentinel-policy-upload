provider "tfe" {
  organization = var.orgName
}

data "tfe_oauth_client" "samuellee-dev-tfc-github-client" {
  organization = var.orgName
  name         = "samuellee-zy-github-oauth"
}

resource "tfe_policy_set" "samuellee-dev-tfc-sentinel-policies" {
  name          = "samuellee-dev-tfc-sentinel-policies"
  description   = "List of Sentinel Policies"
  organization  = var.orgName
  kind          = "sentinel"
  policies_path = "policies"

  vcs_repo {
    identifier         = "samuellee-zy/samuellee-dev-tfc-sentinel-policies"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.samuellee-dev-tfc-github-client.oauth_token_id
  }
}
