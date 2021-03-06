resource "google_storage_bucket" "bucket" {
  name = "test-bucket-jorgefigueiredo"
}

resource "google_storage_bucket_object" "archive" {
  name   = "cloud-functions-java-release.zip"
  bucket = google_storage_bucket.bucket.name
  source = "gcp/cloud-functions/cloud-functions-java-release.zip"
}

resource "google_cloudfunctions_function" "function" {
  name        = "function-test"
  description = "My function"
  runtime     = "java11"

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.archive.name
  trigger_http          = true
  timeout               = 60
  entry_point           = "functions.HelloWorld"
  labels = {
    my-label = "my-label-value"
  }

  environment_variables = {
    MY_ENV_VAR = "my-env-var-value"
  }
}

# IAM entry for a single user to invoke the function
#resource "google_cloudfunctions_function_iam_member" "invoker" {
#  project = "gcp-terraform-teamplates"
#  region  = "us-central1"
#  cloud_function = google_cloudfunctions_function.function.name

#  role   = "roles/cloudfunctions.invoker"
#  member = "user:jorgeacf32@gmail.com"
#}