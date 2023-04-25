provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "foo" {
ami           = "ami-06e46074ae430fba6" 
instance_type = "t2.micro"
tags = {
    Name = "TF-Instance1"
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "S3 Bucket" {
  bucket = "sachinbuc8"

  tags = {
    Name        = "terrabuc"
    }
}
}

