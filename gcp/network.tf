resource "google_compute_network" "my_network_mza" {
  name = "${var.network}"
}

resource "google_compute_subnetwork" "my_subnetwork_mza" {
  name          = "${var.network}-subnetwork-${var.region}"
  region        = "${var.region}"
  network       = "${google_compute_network.my_network_mza.self_link}"
  ip_cidr_range = "${var.cidr}"
}