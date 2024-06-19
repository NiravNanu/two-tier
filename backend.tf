terraform {
  backend "s3" {
    bucket = "nirav19101993"
    key = "nirav"
    region = "us-east-1"
    dynamodb_table = "my-dynamo-db-table-tf"
  }
}