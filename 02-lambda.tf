# Lambda function
resource "aws_lambda_function" "terraform_lambda_func" {
  filename      = "${path.module}/python/hello-post.zip"
  function_name = "hello-post"
  role          = aws_iam_role.lambda_role.arn
  handler       = "hello-post.lambda_handler"
  runtime       = "python3.11"
}

# Generates an archive from content
data "archive_file" "zip_the_python_code" {
  type        = "zip"
  source_dir  = "${path.module}/python/"
  output_path = "${path.module}/python/hello-post.zip"
}

# Attach Lambda execution permissions for API Gateway
resource "aws_lambda_permission" "api_gw" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.terraform_lambda_func.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = aws_apigatewayv2_api.post-api.execution_arn
}


