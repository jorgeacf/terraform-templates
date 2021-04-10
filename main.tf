
terraform {
  backend "gcs" {
    bucket = "terraform-state-jf"
    prefix = "prod"
  }
}

module "docker" {
  source = "./docker"
}

module "gcp" {
  source = "./gcp"
}