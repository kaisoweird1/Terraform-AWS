resource "aws_instance" "example" {
  ami                         = "ami-04f7a54071e74f488"       # copy an ami from the AWS console
  instance_type               = "t2.micro"                    # enter instance type
  subnet_id                   = "subnet-073ccd78d47e4a099"    #copy subnet id from the AWS console
  associate_public_ip_address = false                         # set to true if you want to assign a public IP address

  root_block_device {
    volume_size = var.ebs_volume_size   #EBS volume
  }

  tags = {
    Name = "NewInstance"    # Name for the instance
  }
}
