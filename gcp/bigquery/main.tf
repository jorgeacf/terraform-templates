
resource "google_project_service" "api_cloudresourcemanager" {
  project = "gcp-terraform-teamplates"
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "api_iam" {
  project = "gcp-terraform-teamplates"
  service = "iam.googleapis.com"
}

module "dataset" {
  source = "./dataset"
}