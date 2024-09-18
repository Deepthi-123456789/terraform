variable "ami-id"{
    default = "ami-0b4f379183e5706b9"
}
variable "instance-type"{
    default = "t2.micro"
}

variable "instance_name"{
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}