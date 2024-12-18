
#aws provider version 5.81.0
resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"   # Centos-8-DevOps-Practice
  instance_type = lookup(var.instance_type,terraform.workspace)
  tags = {
    Name = "roboshop"
  }
}