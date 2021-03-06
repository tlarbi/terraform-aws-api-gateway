provider "aws" {
  region                      = "us-east-1"
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  access_key                  = "This is not an actual access key."
  secret_key                  = "This is not an actual secret key."

  endpoints {
    apigateway       = "http://localstack:4567"
    cloudwatchevents = "http://localstack:4587"
    iam              = "http://localstack:4593"
    lambda           = "http://localstack:4574"
    sts              = "http://localstack:4592"
  }
}
