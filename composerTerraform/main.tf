module "us-central1-probers" {
  source = "./modules"

  region = "us-central1"
  zone = "us-central1-a"
  project = "$PROJECT_NAME_HERE"
}
