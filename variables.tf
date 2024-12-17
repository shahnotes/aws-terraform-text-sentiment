variable "region" {
  description = "Region of the AWS infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "Account profile"
  type        = string
  default     = "default"
}

variable "environment" {
  description = "Environment of the infrastructure"
  type        = string
  default     = "dev"
}

variable "provisioner" {
  description = "Provisioner of the AWS infrastructure"
  type        = string
  default     = "terraform"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "project_owner" {
  description = "Owner of the project"
  type = string
}
