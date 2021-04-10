

data "terraform_remote_state" "terraform_remote_state_files" {
  backend = "gcs"
  config = {
    bucket  = "terraform-state-jf"
    prefix  = "prod"
  }
}

module "docker" {
  source = "./docker"
}

module "gcp" {
  source = "./gcp"
}