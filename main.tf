terraform {
  required_providers {
    keycloak = {
      source = "mrparkers/keycloak"
      version = "3.10.0"
    }
  }
}

provider "keycloak" {
    client_id     = "admin-cli"
    username      = "admin"
    password      = "password"
    url           = "http://localhost:8080"
}
