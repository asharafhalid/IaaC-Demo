resource "aws_instance" "Web" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
