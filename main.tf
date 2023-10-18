provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "web02" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"

  tags = {
    Name        = "webserver"
    Environment = "prod"
  }
}
