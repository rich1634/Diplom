# backend-setup.tf
resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name
  # Помогает защитить от удаления. Не даст выполнить terraform destroy
  #  lifecycle {
  #   prevent_destroy = true
  # }
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
