
provider "google" {
  project = "gcp-terraform-teamplates"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "bigquery" {
  source = "./bigquery"
}

module "cloud-functions" {
  source = "./cloud-functions"
}

module "gcs" {
  source = "./gcs"
}
