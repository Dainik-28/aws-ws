output "US_App_URL" {
  value = aws_apprunner_service.us.service_url
}
output "Asia_App_URL" {
  value = aws_apprunner_service.ap.service_url
}
output "Europe_App_URL" {
  value = aws_apprunner_service.eu.service_url
}
output "US_App_URL_simple_route" {
  value = aws_route53_record.us-simple.name
}
output "Asia_App_URL_simple_route" {
  value = aws_route53_record.ap-simple.name
}
output "Europe_App_URL_simple_route" {
  value = aws_route53_record.eu-simple.name
}
