locals {

  environment    = lower(var.environment)
  project_prefix = lower(var.project_prefix)

  bucket_name  = "${local.project_prefix}-${local.environment}-${lower(var.bucket_name)}"
  kms_key_name = "${local.project_prefix}-${local.environment}-${lower(var.kms_key_name)}"
}
