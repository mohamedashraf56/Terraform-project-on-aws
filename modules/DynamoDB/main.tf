resource "aws_dynamodb_table" "my_dynamodb" {
  name         = "New_DynamoDB"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "New_DynamoDB_Table"
  }
}