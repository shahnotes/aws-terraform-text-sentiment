import boto3
import json
import os

# Initialize SageMaker runtime client
sagemaker_runtime = boto3.client('sagemaker-runtime')

# Get the endpoint name from environment variables
ENDPOINT_NAME = os.environ.get("ENDPOINT_NAME", "")

def lambda_handler(event, context):
    try:
        # Parse input text from the API Gateway event
        body = json.loads(event["body"])
        input_text = body.get("text", "")

        if not input_text:
            return {
                "statusCode": 400,
                "body": json.dumps({"error": "Text input is required"})
            }

        # Prepare payload for SageMaker
        payload = json.dumps({"text": input_text})

        # Invoke the SageMaker endpoint
        response = sagemaker_runtime.invoke_endpoint(
            EndpointName=ENDPOINT_NAME,
            ContentType="application/json",
            Body=payload
        )

        # Parse the response from SageMaker
        response_body = response["Body"].read().decode("utf-8")
        sentiment_data = json.loads(response_body)

        # Return the prediction result
        return {
            "statusCode": 200,
            "body": json.dumps(sentiment_data)
        }

    except Exception as e:
        # Handle errors
        return {
            "statusCode": 500,
            "body": json.dumps({"error": str(e)})
        }
