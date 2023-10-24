provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "web02" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name        = "webserver"
    Environment = "prod"
  }
}
