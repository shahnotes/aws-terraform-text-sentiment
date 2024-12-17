locals {
  environment        = lower(var.environment)
  project_prefix     = lower(var.project_prefix)
  lambda_role_name   = "${local.project_prefix}-${local.environment}-lambda-role"
  lambda_policy_name = "${local.project_prefix}-${local.environment}-lambda-policy"
}
