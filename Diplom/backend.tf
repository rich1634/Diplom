# providers.tf
terraform {
  backend "s3" {
    bucket       = "bucket-ridchenko"
    key          = "./terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true #новый признак для блокировки файла. Раньше использовалась dynamodb


  }
}
