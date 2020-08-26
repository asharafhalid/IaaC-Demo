resource "aws_instance" "db-server" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"
  security_groups =[aws_security_group.dbsec.name]

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

output "instance_public_dns" {
  value       = aws_instance.db-server.public_dns
  #sensitive   = true
  
}

output "instance_public_ip" {
  value       = aws_instance.db-server.public_ip
  #sensitive   = true
  
}
