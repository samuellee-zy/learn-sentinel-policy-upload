terraform {
  cloud {
    organization = "samuellee-dev"

    workspaces {
      name = "samuellee-dev-tfc-sentinel-policies"
    }
  }
}
