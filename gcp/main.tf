
/////////// Instance
resource "google_compute_instance" "my-instance" {
  count        = "${var.instance_count}"
  name         = "${var.instance_name}-${count.index}"
  machine_type = "${var.machine_type}"
  zone = "${var.zone}"

  tags = [
    "allow-ssh-mza",
    "allow-internal"
  ]

  boot_disk {
    initialize_params {
      image = "${var.os}"
    }
  }

  metadata {
    hostname = "TODO",
    ssh-keys = "${var.user}:${file("${var.ssh_pub_key}")}"
  }

  network_interface {
    network = "${google_compute_network.my_network_mza.name}"
    access_config {
      // Ephemeral IP
    }
  }
}

