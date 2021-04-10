
provider "google" {
  project = "{{ secrets.GCP_PROJECT_ID }}"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "gcs_bucket" {
  name = "test-bucket-random-001123"
}