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
output "URL_for_Geolocation_based_routing" {
  value = "geo.${var.student_id}.cgpit.xyz"
}
output "URL_for_Weighted_routing" {
  value = "weighted.${var.student_id}.cgpit.xyz"
}
output "URL_for_Latency_based_routing" {
  value = "latency.${var.student_id}.cgpit.xyz"
}
output "URL_for_failover_routing" {
  value = "failover.${var.student_id}.cgpit.xyz"
}