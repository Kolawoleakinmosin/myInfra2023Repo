terraform {
  backend "s3" {
    bucket = "my-s3-bucket-newclass"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamo-table-new"
  }
}
