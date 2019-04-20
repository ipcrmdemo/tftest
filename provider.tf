terraform {
    backend "s3" {
      bucket = "ipcrm-tfstate"
      key = "terraform.tfstate"
      region = "us-east-1"
      dynamodb_table = "terraform-state-lock-dynamo"
    }
}

variable "aws_access_key" {
}

variable "aws_secret_key" {
}

variable "region" {
}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"
}
