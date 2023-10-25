import json
import boto3

def lambda_handler(event, context):

    body = json.loads(event['body'])

    #S3 bucket name
    bucket_name = "my-simple-bucket-774641"

    # Initialize the S3 client
    s3 = boto3.client('s3')

    # to upload the JSON data to a file in the S3 bucket
    s3_key = "my-data.json"

    # Convert the data to a JSON string
    data_json = json.dumps(body)

    # Upload the data to the S3 bucket
    s3.put_object(Bucket=bucket_name, Key=s3_key, Body=data_json)

    response = {
        "statusCode": 200,
        "body": json.dumps({"message": "Data uploaded to S3 successfully"})
    }
    return response
