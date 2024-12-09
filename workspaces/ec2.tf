resource "aws_instance" "terraform" {

        ami = "ami-09c813fb71547fc4f"
        instance_type = lookup(var.instance_type, terraform.workspace)   #basically terraform.worksapce tells env
        vpc_security_group_ids = ["sg-099a766437c0af022"]
        tags = {
            Name = "terraform-${terraform.workspace}"
        }
    }