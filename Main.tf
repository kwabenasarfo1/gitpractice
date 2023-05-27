# Git Practice VPC
resource "aws_vpc" "Practice-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true


  tags = {
    Name = "Practice-vpc"
  }
}


#Creating Public Subnet
resource "aws_subnet" "public-sub-1" {
  vpc_id     = aws_vpc.Practice-vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name = "public-sub-1"
  }
}

#Creating Private Subnet
resource "aws_subnet" "private-sub-1" {
  vpc_id     = aws_vpc.Practice-vpc.id
  cidr_block = "10.0.11.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name = "private-sub-1"
  }
}


