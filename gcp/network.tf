resource "google_compute_network" "my_network" {
  name = "${var.network}"
}

resource "google_compute_subnetwork" "my_subnetwork" {
  name          = "my-subnetwork"
  region        = "${var.region}"
  network       = "${google_compute_network.my_network.self_link}"
  ip_cidr_range = "${var.cidr}"
}