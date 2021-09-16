resource "aws_apprunner_service" "us-west-2" {
  provider     = aws.us-west-2
  service_name = "${var.student_id}-us-west-2"

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
resource "aws_apprunner_service" "ap-northeast-1" {
  provider     = aws.ap-northeast-1
  service_name = "${var.student_id}-ap-northeast-1"

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
resource "aws_apprunner_service" "eu-west-1" {
  provider     = aws.eu-west-1
  service_name = "${var.student_id}-eu-west-1"

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