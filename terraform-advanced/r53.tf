resource "aws_route53_zone" "student" {
  provider = aws.us
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
### Simple DNS Records for APP 
resource "aws_route53_record" "us-simple" {
  provider = aws.us
  zone_id  = aws_route53_zone.student.zone_id
  name     = "us-simple.${var.student_id}.cgpit.xyz"
  type     = "CNAME"
  ttl      = "3"
  records  = [aws_apprunner_service.us.service_url]
}
resource "aws_route53_record" "ap-simple" {
  provider = aws.ap
  zone_id  = aws_route53_zone.student.zone_id
  name     = "ap-simple.${var.student_id}.cgpit.xyz"
  type     = "CNAME"
  ttl      = "3"
  records  = [aws_apprunner_service.ap.service_url]
}
resource "aws_route53_record" "eu-simple" {
  provider = aws.eu
  zone_id  = aws_route53_zone.student.zone_id
  name     = "eu-simple.${var.student_id}.cgpit.xyz"
  type     = "CNAME"
  ttl      = "3"
  records  = [aws_apprunner_service.eu.service_url]
}

### Domain Validation Records
resource "aws_route53_record" "us-simple-domain-validation" {
  count    = 3
  provider = aws.us
  zone_id  = aws_route53_zone.student.zone_id
  name     = tolist(aws_apprunner_custom_domain_association.us-simple.certificate_validation_records)[count.index].name
  type     = "CNAME"
  ttl      = "3"
  records  = [tolist(aws_apprunner_custom_domain_association.us-simple.certificate_validation_records)[count.index].value]
}
resource "aws_route53_record" "ap-simple-domain-validation" {
  count    = 3
  provider = aws.ap
  zone_id  = aws_route53_zone.student.zone_id
  name     = tolist(aws_apprunner_custom_domain_association.ap-simple.certificate_validation_records)[count.index].name
  type     = "CNAME"
  ttl      = "3"
  records  = [tolist(aws_apprunner_custom_domain_association.ap-simple.certificate_validation_records)[count.index].value]
}
resource "aws_route53_record" "eu-simple-domain-validation" {
  count    = 3
  provider = aws.eu
  zone_id  = aws_route53_zone.student.zone_id
  name     = tolist(aws_apprunner_custom_domain_association.eu-simple.certificate_validation_records)[count.index].name
  type     = "CNAME"
  ttl      = "3"
  records  = [tolist(aws_apprunner_custom_domain_association.eu-simple.certificate_validation_records)[count.index].value]
}
