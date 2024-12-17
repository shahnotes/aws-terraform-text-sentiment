terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
resource "aws_lambda_function" "this" {
  function_name = "index.lambda_handler"
  filename      = "lambda_function.zip"
  runtime       = "python3.9"
  timeout       = 30
  role          = aws_iam_role.lambda_role.arn

  environment {
    variables = {
      ENDPOINT_NAME = var.sagemaker_endpoint_name
    }
  }
}
