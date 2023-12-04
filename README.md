<!DOCTYPE html>
<html>
<head>
  <title>Serverless Data Processing with Terraform</title>
</head>
<body>

<h1>Welcome to the Serverless Adventure! 🚀</h1>

<p>Join us in the realm of serverless magic where AWS Lambda, API Gateway, and S3 unite to create a symphony of data processing!</p>

<h2>Project Description 🛠️</h2>
<p>This Terraform project is like a conductor orchestrating the deployment of an AWS Lambda function, an API Gateway, and an S3 bucket. They dance together to create a marvelous serverless architecture!</p>
<p>The Lambda function is the maestro here, taking incoming data from the API Gateway and composing it into beautiful JSON melodies stored in the enchanted S3 bucket.</p>
<p>With this magic, you can summon the Lambda function using HTTP requests, crafting wondrous serverless data processing pipelines!</p>

<h2>Components 🧩</h2>
<ul>
  <li><strong>AWS Lambda Function 🌟</strong>
    <ul>
      <li>Function: A Python 3.11 magician! It transforms incoming data from API Gateway into harmonious JSON spells stored in S3.</li>
      <li>IAM Role: The Lambda function dons an IAM robe (terraform_aws_lambda_role) granting it the powers to write logs and charm the S3 spirits.</li>
    </ul>
  </li>
  <li><strong>API Gateway 🌐</strong>
    <ul>
      <li>HTTP API: An AWS HTTP API is the gateway to triggering Lambda's magic.</li>
      <li>Route: A special route (POST /post2s3) where Lambda's spellbinding function (hello-integration) is summoned.</li>
      <li>Integration: An enchanting AWS Proxy integration allowing seamless communication with Lambda.</li>
    </ul>
  </li>
  <li><strong>S3 Bucket 🪣</strong>
    <ul>
      <li>Bucket: The mystical S3 realm where Lambda's crafted JSON wonders find their eternal home.</li>
      <li>IAM Policy: An enchanted policy (aws_iam_policy_for_terraform_aws_lambda_role2) allowing the Lambda function to place its magical creations within.</li>
    </ul>
  </li>
</ul>

<h2>IAM Roles and Policies 👑</h2>
<p>Lambda Role: Behold the IAM role (terraform_aws_lambda_role) bestowed upon Lambda, granting it the power to assume roles and write logs.</p>
<p>IAM Policies: Two powerful policies (aws_iam_policy_for_terraform_aws_lambda_role and aws_iam_policy_for_terraform_aws_lambda_role2) embrace Lambda, granting it CloudWatch and S3 object upload powers.</p>

<h2>Usage 🚀</h2>
<ol>
  <li>Cast the deployment spell using Terraform.</li>
  <li>Summon the Lambda magic by crafting HTTP POST requests to the mystical API Gateway endpoint (POST /post2s3).</li>
  <li>Watch in awe as Lambda processes the incoming data, weaving them into JSON tales and storing them in the sacred S3 sanctuary.</li>
</ol>

<p>This project is perfect for adventures where incoming data needs processing via HTTP requests, destined for storage in an S3 bucket for analysis or archival purposes!</p>

<div style="text-align:center;">
  <img src="https://via.placeholder.com/600" alt="Serverless Architecture Diagram">
  <p style="font-style: italic;">Behold the mystical dance of AWS services in the serverless realm!</p>
</div>

</body>
</html>
