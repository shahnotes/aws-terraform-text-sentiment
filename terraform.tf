terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }

  # backend "s3" {
  #   bucket         = "tf_state_bucket"
  #   key            = "dev/terraform.tfstate"
  #   region         = var.region
  #   dynamodb_table = "tf_state_locks"
  #   encrypt        = true
  # }
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
