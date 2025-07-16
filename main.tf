provider "aws" {
  profile    = "default"
  region     = "us-west-2"
}

resource "aws_sqs_queue" "example" {
  name                      = "example"
  delay_seconds             = 10
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
}
