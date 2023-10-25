Project Description
This Terraform project automates the deployment of an AWS Lambda function, an API Gateway, and an S3 bucket to create a serverless architecture. The Lambda function is responsible for processing incoming data from the API Gateway and saving it as JSON files in the specified S3 bucket. This architecture allows you to trigger the Lambda function via HTTP requests, making it useful for building serverless data processing pipelines.

Components
AWS Lambda Function
Function: The Lambda function is defined in Python 3.11 and is responsible for processing incoming data. It extracts data from API Gateway requests, converts it to a JSON string, and stores it in an S3 bucket.
IAM Role: The Lambda function assumes an IAM role (terraform_aws_lambda_role) with permissions to write logs and interact with S3.

API Gateway
HTTP API: An AWS HTTP API is created to provide endpoints for triggering the Lambda function.
Route: A specific route (POST /post2s3) is defined, which triggers the Lambda function (hello-integration) when accessed.
Integration: An AWS Proxy integration is established between the API Gateway and the Lambda function, allowing seamless communication.

S3 Bucket
Bucket: An S3 bucket is defined to store the JSON data processed by the Lambda function.
IAM Policy: The S3 bucket is attached to an IAM policy (aws_iam_policy_for_terraform_aws_lambda_role2) that grants the Lambda function permission to put objects in the bucket.

IAM Roles and Policies
Lambda Role: An IAM role (terraform_aws_lambda_role) is defined for the Lambda function with permissions to assume a role for Lambda and write logs.

IAM Policies: Two IAM policies (aws_iam_policy_for_terraform_aws_lambda_role and aws_iam_policy_for_terraform_aws_lambda_role2) are attached to the Lambda role. These policies grant permissions for CloudWatch logging and S3 object uploads.

Usage
Deploy the infrastructure using Terraform.
Trigger the Lambda function by making HTTP POST requests to the specified API Gateway endpoint (POST /post2s3).
The Lambda function processes the incoming data and saves it as JSON files in the designated S3 bucket.
This project is suitable for scenarios where you need to process incoming data via HTTP requests and store the processed data in an S3 bucket for further analysis or archival.

      +---------------------+         +------------------+
      |                     |         |                  |
      |   HTTP Request      |         |   AWS Lambda     |
      |   (API Gateway)    |  -----> |   Function       |
      |                     |         |                  |
      +---------------------+         +------------------+
                                     /        |         \
                                    /         |          \
                +-------------+  /          |           \  +------------+
                |             | /           |            \ |            |
                |    AWS S3   |/            |             \|    IAM     |
                |    Bucket   |             |             | |    Roles   |
                |             |             |             | |    & Policies|
                +-------------+             +-------------+ +------------+
