 provider "aws" {
      region = "ap-south-1"
  }

  resource "aws_s3_bucket" "bucket1" {
      bucket = "terraform-20-06-2023"

      tags = {
          Environmane = "Dev"
      }
}
