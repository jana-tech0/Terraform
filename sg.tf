resource "aws_security_group" "web_sg" {
  name        = var.sg_name
  description = "Security Group for Web Server"

  

  ingress {
    description = "allowing all inbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
  }


  
  egress {
    description = "Allow All Outbound Traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.sg_cidr
  }

  tags = {
    Name = "web-sg"
  }
}