#command line
#terraform.tfvars

variable "ami-id"{
    default = "ami-0b4f379183e5706b9"
}
variable "instance-type"{
    default = "t2.micro"
}
variable "tags"{
    default = {
        name = "web"
        Name = "dell"
        environment = "dev"
        Terraform = "true"
    }
}
variable "sg-name"{
    default = "roboshop-all-aws"
}
variable "sg-description"{
    default = "Allow TLS inbound traffic and all outbound traffic"
}
variable "from_to_port"{
    default = 0
}
variable "sg-cidr_blocks"{
    default = ["0.0.0.0/0"]
}