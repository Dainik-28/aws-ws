resource "aws_route53_zone" "student" {
  provider = aws.us-west-2
  name     = "${var.student_id}.cgpit.xyz"
}

resource "aws_route53_record" "ns" {
  provider = aws.host_account
  zone_id  = "Z053105576KXNEFWGZZ9"
  name     = "${var.student_id}.cgpit.xyz"
  type     = "NS"
  ttl      = "3"
  records  = aws_route53_zone.student.name_servers
}