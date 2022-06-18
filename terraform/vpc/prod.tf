#Declaring AWS Provider and credentials
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAS7T2UNA2IAT5"
  secret_key = "P7NSL0vC5xZZHa72m7fy+FMnMQEYRT/D5AZOTn24"
}
#######################################################
#Creating Production VPC with CIDR: 10.0.0.0/16
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16" 
    tags = {
        Name = "Prod VPC"
    }
}
output "vpcid" {
  value = aws_vpc.vpc.id
}
###########################################################

