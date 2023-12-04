  <title>Serverless Data Processing with AWS and Terraform</title>

<h1>Serverless Data Processing with AWS and Terraform</h1>

<p>This project automates the deployment of AWS Lambda functions, an API Gateway, and an S3 bucket to facilitate serverless data processing. It's designed for educational purposes as part of my Cloud Computing DevOps Engineer training. 🌐🛠️</p>

<h2>Overview</h2>

<p>Utilizing AWS services such as Lambda, API Gateway, and S3, this project enables seamless data processing through HTTP requests, securely storing processed data in an S3 bucket. 🚀🔐</p>

<h2>Features</h2>

<ul>
  <li><strong>AWS Integration</strong>: Integrates AWS services for robust data handling. 🤝</li>
  <li><strong>Data Processing</strong>: Transforms incoming data via Lambda and securely stores it in S3. 🔄🗃️</li>
  <li><strong>Scalability</strong>: Ensures scalability for handling varying data loads. 📈</li>
</ul>

<h2>Usage</h2>

<h3>Deployment</h3>

<ol>
  <li>Clone the repository:
    <pre><code>git clone &lt;repository_url&gt;</code></pre>
  </li>
  <li>Set up AWS credentials and configure the AWS CLI.</li>
  <li>Run Terraform commands:
    <pre><code>terraform init<br>terraform plan<br>terraform apply</code></pre>
  </li>
</ol>

<h3>Triggering Lambda</h3>

<p>To trigger the Lambda function, use HTTP POST requests at the specified API Gateway endpoint (<code>POST /post2s3</code>). 📤🔥</p>

<h3>Data Processing</h3>

<p>The Lambda function (<code>#hello-post.py</code>) processes incoming data from the API Gateway and saves it as JSON files in the designated S3 bucket. 🖥️📦</p>

<h2>Project Structure</h2>

<ul>
  <li><code>#hello-post.py</code>: Contains the Lambda function code.</li>
  <li><code>01-s3.tf</code>, <code>03-iam-roles.tf</code>: Terraform configuration files for AWS resources and IAM roles.</li>
  <li><code>variables.tf</code>: Defines project variables.</li>
  <li><code>outputs.tf</code>: Provides essential outputs (API endpoint URLs, S3 bucket names, Lambda function ARNs).</li>
  <li><code>terraform.tf</code>: Specifies Terraform version and required providers.</li>
</ul>

<h2>Prerequisites</h2>

<ul>
  <li><strong>AWS Account</strong>: Access to an AWS account with proper permissions.</li>
  <li><strong>Terraform</strong>: Installed and configured on your local machine.</li>
</ul>

<h2>Getting Started</h2>

<ol>
  <li>Clone the repository.</li>
  <li>Set up AWS credentials and AWS CLI configuration.</li>
  <li>Run Terraform commands for deployment.</li>
</ol>

<h2>Additional Information</h2>

<p>This project is designed for educational purposes only and was created during my Cloud Computing DevOps Engineer training. 🎓</p>
