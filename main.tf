provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "web" {
  count         = var.count
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name        = "webserver-${count.index}"
    Environment = "dev"
  }
}
