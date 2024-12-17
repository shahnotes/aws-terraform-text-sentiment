variable "environment" {
  description = "Environment of the infrastructure"
  type        = string
  default     = "dev"
}

variable "project_prefix" {
  description = "Prefix of the project"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "kms_key_name" {
  description = "Name of the KMS key for S3 bucket encryption"
  type        = string
}
