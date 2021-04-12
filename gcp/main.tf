
provider "google" {
  project = "gcp-terraform-teamplates"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "cloud-functions" {
  source = "./cloud-functions"
}

module "gcs" {
  source = "./gcs"
}



resource "null_resource" "cloud_functions_zip" {
  triggers = {
    on_version_change = "1"
  }

  provisioner "local-exec" {
    command = "wget -o cloud-functions-java-release.zip https://github.com/jorgeacf/gcp-examples/releases/download/latest/cloud-functions-java-release.zip"
  }
}