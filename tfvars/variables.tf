variable "instances" {
    type = map
}

variable zone_id {
    default = "Z01584833LT7LVUACGA1"
} 

variable domain_name {
    default = "kalpanadevops.online"
}

variable common_tags {
    default = {
        Project = "expense"
        Terraform = "true"      
    }
}

variable "tags" {
    type = map
}

variable "environment" {
    
}
