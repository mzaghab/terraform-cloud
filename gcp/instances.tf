
/////////// ADMIN /////////// 
resource "google_compute_instance" "admin" {
  count        = "1"
  name         = "admin${count.index}"
  machine_type = "${var.instance_type_n1_std1}"
  zone = "${var.zone}"

  tags = [
    "allow-ssh",
    "allow-internal"
  ]

  boot_disk {
    initialize_params {
      image = "${var.os}"
    }
  }

  metadata {
    ssh-keys = "${var.user}:${file("${var.ssh_pub_key}")}"
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.my_subnetwork.name}"
    access_config {
      // Ephemeral IP
    }
  }
}

/////////// MASTER /////////// 
resource "google_compute_instance" "master" {
  count        = "2"
  name         = "master${count.index}"
  machine_type = "${var.instance_type_n1_std1}"
  zone = "${var.zone}"

  tags = [
    "allow-ssh",
    "allow-internal"
  ]

  boot_disk {
    initialize_params {
      image = "${var.os}"
    }
  }

  metadata {
    ssh-keys = "${var.user}:${file("${var.ssh_pub_key}")}"
  }

  network_interface {
//    network = "${google_compute_network.my_network.name}"
    subnetwork = "${google_compute_subnetwork.my_subnetwork.name}"
    access_config {
      // Ephemeral IP
    }
  }
}

/////////// SLAVE /////////// 
resource "google_compute_instance" "slave" {
  count        = "3"
  name         = "slave${count.index}"
  machine_type = "${var.instance_type_n1_std1}"
  zone = "${var.zone}"

  tags = [
    "allow-ssh",
    "allow-internal"
  ]

  boot_disk {
    initialize_params {
      image = "${var.os}"
    }
  }

  metadata {
    ssh-keys = "${var.user}:${file("${var.ssh_pub_key}")}"
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.my_subnetwork.name}"
    access_config {
      // Ephemeral IP
    }
  }
}

