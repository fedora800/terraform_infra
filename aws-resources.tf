# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myinstance" {

  ami           = "ami-007855ac798b5175e"            # Canonical, Ubuntu, 22.04 LTS, amd64 jammy image 
  instance_type = "t2.micro"                         # only instance that is free tier eligible

  tags = {
    Name = "aws-kcontrol-1"
  }
  count = 1
}

