resource "aws_s3_bucket" "demo_bucket" {
  bucket = "${{ values.projectName }}-demo-bucket"

  tags = {
    Project = "${{ values.projectName }}"
  }
}
