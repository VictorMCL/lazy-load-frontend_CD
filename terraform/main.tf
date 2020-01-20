resource "google_container_cluster" "cluster" {
  name               = "${var.app_name}-cl-${var.stage}"
  location               = "${var.providerRegion}"
  initial_node_count = "${var.initial_node_count}"
  min_master_version = "${var.node_version}"
  node_version = "${var.node_version}"
  master_auth {
    username = "${var.username}"
    password = "${var.password}"
  }
  node_config {
    machine_type = "${var.machine_type}"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
  timeouts {
    create = "20m"
    update = "30m"
  }
}