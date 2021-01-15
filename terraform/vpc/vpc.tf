provider "aws" {
  region = "us-east-1"
}


resource "aws_vpc" "vinicius" {
  cidr_block       = "192.168.17.0/24"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "Teste-Vinicius"
  }
}

resource "aws_subnet" "subnet-teste-1" {
    vpc_id = aws_vpc.vinicius.id
    cidr_block = "192.168.17.0/25"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1a"
    tags = {
        Name = "Teste-Vinicius-1"
    }
}


resource "aws_subnet" "subnet-teste-2" {
    vpc_id = aws_vpc.vinicius.id
    cidr_block = "192.168.17.128/25"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1c"
    tags = {
        Name = "Teste-Vinicius-2"
    }
}


#data "aws_availability_zones" "available" {}
#
#output "Teste" {
#  value = data.aws_availability_zones.available
#}
