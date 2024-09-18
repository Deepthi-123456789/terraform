resource aws_instance "web"{ 
    count = 11
    ami = var.ami-id
    instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" || var.instance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"
    tags = {
      Name = var.instance_name[count.index]
      terraform = true
      environment = "dev"
    }
}
resource "aws_route53_record" "www" {
  count = 11
  zone_id = "Z0426536RLNV1FOO62SE"
  name    = "${var.instance_name[count.index]}.pjdevops.online"
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}
