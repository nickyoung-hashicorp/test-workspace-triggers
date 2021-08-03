terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
  backend "remote" {
    organization = "ServiceNow-TFC"
    workspaces {
      name = "test-workspace-triggers"
    }
  }
}

output "workspace" {
  value = "test-workspace-triggers"
}
