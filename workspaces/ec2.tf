resource "aws_instance" "terraform" {

        ami = "ami-09c813fb71547fc4f"
        instance_type = lookup(var.instance_type, terraform.workspace)
        vpc_security_group_ids = ["sg-07f58d150b8b8711d"]
        tags = {
            Name = "terraform-${terraform.workspace}"
        }
    }