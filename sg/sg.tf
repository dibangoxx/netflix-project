resource "aws_security_group" "web-securityGroup" {
  name        = "web-SG"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-060525e0a6e2ef5f1"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "web-SG"
  }
}
