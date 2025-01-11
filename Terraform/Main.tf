terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "customerapp-vpc" {
  cidr_block = "10.10.0.0/24"
  tags = {
    Name = "customerapp-vpc"
  }
}
resource "aws_subnet" "customerapp-subnet-public1" {
  cidr_block = "10.10.0.0/26"
  vpc_id     = aws_vpc.customerapp-vpc.id
  tags = {
    Name = "customerapp-subnet-public1"
  }
}
resource "aws_subnet" "customerapp-subnet-public2" {
  cidr_block = "10.10.0.64/26"
  vpc_id     = aws_vpc.customerapp-vpc.id
  tags = {
    Name = "customerapp-subnet-public2"
  }
}
resource "aws_subnet" "customerapp-subnet-private1" {
  cidr_block = "10.10.0.128/26"
  vpc_id     = aws_vpc.customerapp-vpc.id
  tags = {
    Name = "customerapp-subnet-private1",
  }
}
resource "aws_subnet" "customerapp-subnet-private2" {
  cidr_block = "10.10.0.192/26"
  vpc_id     = aws_vpc.customerapp-vpc.id
  tags = {
    Name = "customerapp-subnet-private2"
  }
}
