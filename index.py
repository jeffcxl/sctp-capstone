import json
import boto3
import os

s3_client = boto3.client('s3')

def handler(event, context):
    bucket_name = os.getenv('BUCKET_NAME')
    # Example operation: list objects in the S3 bucket
    response = s3_client.list_objects_v2(Bucket=bucket_name)
    return {
        'statusCode': 200,
        'body': json.dumps(response)
    }
