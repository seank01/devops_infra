terraform {
  backend "s3" {
    bucket = "devops-test-tfbackend-s3"
    key    = "apne2/lambda/iam-check/terraform.tfstate"
    region = "ap-northeast-2"
    #    role_arn    = "{ASSUMED_ROLE}"
    max_retries = 3
  }
}