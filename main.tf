provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "foo" {
ami           = "ami-06e46074ae430fba6" 
instance_type = "t2.micro"
tags = {
    Name = "TF-Instance"
}
}

resource "aws_s3_bucket" "s3terra" {
  bucket = "my-tf-test-bucket98765"

  tags = {
    Name        = "Bucket98765"
    Environment = "Dev"
  }
}
