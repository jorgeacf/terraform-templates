
terraform {
  backend "gcs" {
    bucket = "terraform-state-jf"   # GCS bucket name to store terraform tfstate
    prefix = "prod"           # Update to desired prefix name. Prefix name should be unique for each Terraform project having same remote state bucket.
    }
}

module "docker" {
  source = "./docker"
}

module "gcp" {
  source = "./gcp"
}