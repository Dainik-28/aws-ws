output "US App URL" {
  value = aws_apprunner_service.us-west-2.service_url
}
output "Asia App URL" {
  value = aws_apprunner_service.ap-northeast-1.service_url
}
output "Europe App URL" {
  value = aws_apprunner_service.eu-west-1.service_url
}