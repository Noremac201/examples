# Declare variables that will be used
variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "project" {
  type = string
}

# Declare provider that will be used, this is the equivalent of "gcloud beta"
provider "google-beta" {
  project = var.project
}

resource "google_composer_environment" "private-ip-composer-env" {
  provider = "google-beta"
  name   = "private-ip-terraform-poc"
  region = var.region
  config {
    node_config {
      zone = var.zone
      # required for private ip
      ip_allocation_policy {
        use_ip_aliases = true
      }
    }
    software_config {
      python_version = 3
    }
    private_environment_config {
      enable_private_endpoint = true
      # RFC 1918 matching
      master_ipv4_cidr_block = "192.168.128.0/28"
    }
  }
}
