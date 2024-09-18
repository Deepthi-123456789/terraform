variable "ami-id"{
    default = "ami-0b4f379183e5706b9"
}
variable "instance-type"{
    default = "t2.micro"
}
variable "tags"{
    default = {
        Name = "dell"
        environment = "dev"
        Terraform = "true"
    }
}
variable "instance-name"{
    default = "mongodb"
}