provider "aws" {
  alias      = "us-west-2"
  region     = "us-west-2"
  access_key = var.student_access_key
  secret_key = var.student_secret_key
}

provider "aws" {
  alias      = "ap-northeast-1"
  region     = "ap-northeast-1"
  access_key = var.student_access_key
  secret_key = var.student_secret_key
}

provider "aws" {
  alias      = "eu-west-1"
  region     = "eu-west-1"
  access_key = var.student_access_key
  secret_key = var.student_secret_key
}