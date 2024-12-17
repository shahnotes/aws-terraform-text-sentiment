module "s3" {
  source         = "modules/application/s3"
  bucket_name    = var.bucket_name
  kms_key_name   = var.kms_key_name
  project_prefix = var.project_prefix
  environment    = var.environment
}

module "lambda" {
  source                  = "modules/application/lambda"
  sagemaker_endpoint_name = ""
  project_prefix          = var.project_prefix
  environment             = var.environment
}
