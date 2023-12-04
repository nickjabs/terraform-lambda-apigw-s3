#outputs
output "api_endpoint" {
  description = "The HTTP API endpoint URL"
  value       = aws_apigatewayv2_api.post-api.api_endpoint
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.aws_s3_bucket.bucket
}

output "lambda_function_arn" {
  description = "The ARN of the Lambda function"
  value       = aws_lambda_function.terraform_lambda_func.arn
}

output "api_gateway_id" {
  description = "The ID of the API Gateway"
  value       = aws_apigatewayv2_api.post-api.id
}
