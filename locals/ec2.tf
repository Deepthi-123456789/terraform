resource aws_instance "web"{
    
    ami = "ami-0b4f379183e5706b9"
    instance_type = local.instance_type

    tags = {
        Name = "dell" 
    }
}