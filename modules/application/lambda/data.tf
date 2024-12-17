data "aws_iam_policy_document" "lambda_role_template" {
  statement {
    sid    = "LambdaAssumeRole"
    effect = "Allow"
    principals {
      identifiers = ["lambda.amazonaws.com"]
      type        = "Service"
    }
    actions = ["sts:AssumeRole"]
  }
}

data "aws_iam_policy_document" "lambda_policy_template" {
  statement {
    sid       = "AllowLambdaInvokeSageMaker"
    effect    = "Allow"
    resources = ["*"]
    actions = [
      "sagemaker:InvokeEndpoint",
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
  }
}
