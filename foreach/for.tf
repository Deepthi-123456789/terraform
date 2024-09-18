resource "aws_instance" "web" {
    for_each = var.instance_name
    ami = "ami-0b4f379183e5706b9"
    instance_type = each.value
  tags = {
    Name = each.key
    terraform = true
    environment = "dev"
    }
}
resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = "Z0426536RLNV1FOO62SE"
  name    = "${each.key}.pjdevops.online"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}
