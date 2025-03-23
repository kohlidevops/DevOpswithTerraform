terraform {
  backend "s3" {
    bucket = "latchudevopsterraform1"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
