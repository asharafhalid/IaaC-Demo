resource "aws_instance" "db-server" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"
  secuirty_groups =[aws_security_group.dbsec.name]

  tags = {
    Name = "HelloWorld-2"
  }
}

resource "aws_security_group" "dbsec"{
  name = " db-security-group"
  description = "Allow access to our db-server"
  
  ingress {
    description="allow SSH fromm terraform"
    from_port=22
    to_port =22
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
