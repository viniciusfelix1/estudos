provider "aws" {
  region = "us-east-1"
}


resource "aws_vpc" "vinicius" {
  cidr_block       = "192.168.17.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "Teste-Vinicius"
  }
}

resource "aws_subnet" "subnet-teste" {
    vpc_id = aws_vpc.vinicius.id
    cidr_block = "192.168.17.128/25"
    map_public_ip_on_launch = "false"
    tags = {
        Name = "Teste-Vinicius"
    }
}
