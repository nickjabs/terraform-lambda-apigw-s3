import json

def lambda_handler(event, context):
    # Assuming the event contains the POST request data
    body = json.loads(event['body'])
    response = {
        "statusCode": 200,
        "body": json.dumps({"message": "Hello from Lambda!"})
    }
    return response
