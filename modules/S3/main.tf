
resource "aws_s3_bucket" "s3_new" {
  bucket = "s3-bucket-statefile"
  tags = {
    Name = "s3-new"
  }
}