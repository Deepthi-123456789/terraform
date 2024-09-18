
resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name
  description = var.sg-description

   ingress {
        description      = "Allow All ports"
        from_port        = var.from_to_port # means all ports
        to_port          = var.from_to_port 
        protocol         = "tcp"
        cidr_blocks      = var.sg-cidr_blocks
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "roboshop-all-aws"
    }
}