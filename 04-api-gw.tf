# Create an API Gateway
resource "aws_apigatewayv2_api" "post-api" {
  name          = "post-http-api"
  protocol_type = "HTTP"
}

# Define an API Gateway route
resource "aws_apigatewayv2_route" "post-route" {
  api_id    = aws_apigatewayv2_api.post-api.id
  route_key = "POST /post2s3"
  target    = "integrations/${aws_apigatewayv2_integration.hello-integration.id}"
}

# Create an API Gateway integration
resource "aws_apigatewayv2_integration" "hello-integration" {
  api_id             = aws_apigatewayv2_api.post-api.id
  integration_type   = "AWS_PROXY"
  integration_uri    = aws_lambda_function.terraform_lambda_func.invoke_arn
  integration_method = "POST"
}

# Define an API Gateway stage
resource "aws_apigatewayv2_stage" "example" {
  api_id      = aws_apigatewayv2_api.post-api.id
  name        = "example-stage"
  auto_deploy = true
}

