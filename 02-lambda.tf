# Create a lambda function
# In terraform ${path.module} is the current directory.
resource "aws_lambda_function" "terraform_lambda_func" {
  filename      = "${path.module}/python/hello-post.zip"
  function_name = "hello-post"
  role          = aws_iam_role.lambda_role.arn
  handler       = "hello-post.lambda_handler"
  runtime       = "python3.11"
}

# Generates an archive from content, a file, or a directory of files.

data "archive_file" "zip_the_python_code" {
  type        = "zip"
  source_dir  = "${path.module}/python/"
  output_path = "${path.module}/python/hello-post.zip"
}


