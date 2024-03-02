resource "newrelic_cloud_gcp_link_account" "account_integration" {
  account_id = var.new_relic_account_id
  project_id = var.project
  name  = var.name
}

resource "newrelic_cloud_gcp_integrations" "foo1" {
  linked_account_id = newrelic_cloud_gcp_link_account.account_integration.id
  functions {
    metrics_polling_interval = 400
  }
  kubernetes {
    metrics_polling_interval = 400
  }
  load_balancing {
    metrics_polling_interval = 400
  }
  pub_sub {
    metrics_polling_interval = 400
    fetch_tags=true
  }
  router {
    metrics_polling_interval = 400
  }
  run {
    metrics_polling_interval = 400
  }
  sql {
    metrics_polling_interval = 400
  }
  storage {
    metrics_polling_interval = 400
    fetch_tags=true
  }
  virtual_machines {
    metrics_polling_interval = 400
  }
  vpc_access {
    metrics_polling_interval = 400
  }
}