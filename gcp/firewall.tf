resource "google_compute_firewall" "allow-ssh-MZA" {
  name    = "allow-ssh-mza"
  network = "${google_compute_network.my_network_mza.name}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["allow-ssh-mza"]
}

resource "google_compute_firewall" "allow-internal" {
  name    = "allow-internal"
  network = "${google_compute_network.my_network_mza.name}"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "icmp"
  }
  source_ranges = ["${var.cidr}"]
  target_tags = ["allow-internal"]
}
 