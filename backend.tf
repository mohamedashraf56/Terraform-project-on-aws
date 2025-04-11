terraform {
  backend "s3" {
    bucket         = "s3-bucket-statefile"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "New_DynamoDB"
  }
}