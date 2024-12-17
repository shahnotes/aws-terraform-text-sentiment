variable "environment" {
  description = "Environment of the infrastructure"
  type        = string
  default     = "dev"
}

variable "project_prefix" {
  description = "Prefix of the project"
  type        = string
}

variable "sagemaker_endpoint_name" {
  description = "Name of the SageMaker endpoint"
  type        = string
}
