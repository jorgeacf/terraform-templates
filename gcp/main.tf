
provider "google" {
  project = "gcp-terraform-teamplates"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "gcs_bucket_0" {
  name = "test-bucket-random-00000"
}

resource "google_storage_bucket" "gcs_bucket_1" {
  name = "test-bucket-random-11111"
}


resource "google_storage_bucket" "gcs_bucket_2" {
  name = "test-bucket-random-22222"
}