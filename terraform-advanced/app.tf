resource "aws_apprunner_service" "us" {
  provider     = aws.us
  service_name = "${var.student_id}-us-php-calc"

  source_configuration {
    auto_deployments_enabled = false
    image_repository {
      image_configuration {
        port = var.app_port
        runtime_environment_variables = {
          HOSTED_REGION = "United States"
        }
      }
      image_identifier      = var.image_identifier
      image_repository_type = var.image_repository_type
    }
  }
}
resource "aws_apprunner_service" "ap" {
  provider     = aws.ap
  service_name = "${var.student_id}-ap-php-calc"

  source_configuration {
    auto_deployments_enabled = false
    image_repository {
      image_configuration {
        port = var.app_port
        runtime_environment_variables = {
          HOSTED_REGION = "Asia"
        }
      }
      image_identifier      = var.image_identifier
      image_repository_type = var.image_repository_type
    }
  }
}
resource "aws_apprunner_service" "eu" {
  provider     = aws.eu
  service_name = "${var.student_id}-eu-php-calc"

  source_configuration {
    auto_deployments_enabled = false
    image_repository {
      image_configuration {
        port = var.app_port
        runtime_environment_variables = {
          HOSTED_REGION = "Europe"
        }
      }
      image_identifier      = var.image_identifier
      image_repository_type = var.image_repository_type
    }
  }
}

resource "aws_apprunner_custom_domain_association" "us-simple" {
  provider    = aws.us
  domain_name = "us-simple.${var.student_id}.cgpit.xyz"
  service_arn = aws_apprunner_service.us.arn
}
resource "aws_apprunner_custom_domain_association" "ap-simple" {
  provider    = aws.ap
  domain_name = "ap-simple.${var.student_id}.cgpit.xyz"
  service_arn = aws_apprunner_service.ap.arn
}
resource "aws_apprunner_custom_domain_association" "eu-simple" {
  provider    = aws.eu
  domain_name = "eu-simple.${var.student_id}.cgpit.xyz"
  service_arn = aws_apprunner_service.eu.arn
}
