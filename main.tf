provider "tfe" {
  organization = var.orgName
}

resource "tfe_oauth_client" "samuelleezy" {
  name             = "samuelleezy-oauth-client"
  organization     = var.orgName
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.GITHUB_TOKEN
  service_provider = "github"
}

resource "tfe_policy_set" "test" {
  name          = "samuellee-dev-tfc-sentinel-policies"
  description   = "List of Sentinel Policies"
  organization  = var.orgName
  kind          = "sentinel"
  policies_path = "policies"

  vcs_repo {
    identifier         = "samuelleezy/samuellee-dev-tfc-sentinel-policies"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.samuelleezy.oauth_token_id
  }
}
