# aws-resource-usage-
A shell script to report AWS resource usage

---

## Features

- Lists all S3 buckets
- Lists EC2 instance IDs in the specified region
- Lists Lambda functions
- Lists IAM users
- Saves the output to a file ('resourceTracker.txt')

---

## Usage

1. Ensure AWS CLI and 'jq' are installed and configured with your AWS credentials.
2. Run the script:

chmod +x aws_resource_tracker.sh
./aws_resource_tracker.sh > resourceTracker.txt
