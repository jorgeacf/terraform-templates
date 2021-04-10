
provider "google" {
  project = "gcp-terraform-teamplates"
  region  = "us-central1"
  zone    = "us-central1-c"
}

data "terraform_remote_state" "terraform_remote_state_files" {
  backend = "gcs"
  config = {
    bucket  = "terraform-state-jf"
    prefix  = "prod"
  }
}

resource "google_storage_bucket" "gcs_bucket_0" {
  name = "test-bucket-random-000000"
}

resource "google_storage_bucket" "gcs_bucket_1" {
  name = "test-bucket-random-111111"
}


resource "google_storage_bucket" "gcs_bucket_2" {
  name = "test-bucket-random-222222"
}