resource "aws_iam_role" "lambda_role" {
  name               = local.lambda_role_name
  assume_role_policy = data.aws_iam_policy_document.lambda_role_template.json
}

resource "aws_iam_policy" "lambda_policy" {
  name        = local.lambda_policy_name
  description = "Permissions for Lambda to invoke SageMaker endpoint"
  policy      = data.aws_iam_policy_document.lambda_policy_template.json
}

resource "aws_iam_role_policy_attachment" "lambda_execution_policy_attachment" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_policy.arn
}
