resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = "HelloWorld"  
  }
} 

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-26-8-2005"
    
  tags = var.tags
}