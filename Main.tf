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