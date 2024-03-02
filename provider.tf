terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.31.0"
    }
  }
}

provider "newrelic" {
  api_key = "NRAK-U2QUITB5Z1V6LNVXTVQ4B00BLNY"
  account_id = "4367946"
  region = "US"
}
provider "google" {
  # Configuration options
}