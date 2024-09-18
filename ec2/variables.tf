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