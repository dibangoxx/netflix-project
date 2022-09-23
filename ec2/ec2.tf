# # code to create ec2
# resource "aws_instance" "test" {
#   ami           = var.ami_ids["linux"]
#   instance_type = var.instance_type[0]
#   tags = {
#     Name = var.ec2_name_tag[0]
#   }
# }
# resource "aws_instance" "test2" {
#   ami           = var.ami_ids["ubuntu"]
#   instance_type = var.instance_type[1]
#   tags = {
#     Name = var.ec2_name_tag[1]
#   }
# }

resource "aws_instance" "web1" {
    instance_type = "t2.micro"
    ami = var.ami_id
    associate_public_ip_address = true
    subnet_id = "subnet-04250b11111a34aff"
    vpc_security_group_ids = [var.sg_id]

    tags = {
      "Name" = "netflix-webserver1"
    }
}