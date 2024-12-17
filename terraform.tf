terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
  default_tags {
    tags = {
      Env         = var.environment
      Owner       = var.project_owner
      Project     = var.project_name
      Provisioner = var.provisioner
    }
  }
}
