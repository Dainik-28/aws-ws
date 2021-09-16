output "US_App_URL" {
  value = aws_apprunner_service.us-west-2.service_url
}
output "Asia_App_URL" {
  value = aws_apprunner_service.ap-northeast-1.service_url
}
output "Europe_App_URL" {
  value = aws_apprunner_service.eu-west-1.service_url
}