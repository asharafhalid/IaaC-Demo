resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
    Purpose = "Jenkins Demo- Auto Deploye-with git commit"
  }
}

resource "aws_instance" "Web" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld from VSC"
  }
}


