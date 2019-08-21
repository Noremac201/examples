module "composer-envs" {
  source = "./modules"

  region = "us-central1"
  zone = "us-central1-a"
  project = "$PROJECT_NAME_HERE"
}
