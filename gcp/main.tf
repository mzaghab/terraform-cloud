resource "google_compute_instance" "my-instance" {
  count        = "${var.instance_count}"
  name         = "${var.instance_name}-${count.index}"
  machine_type = "${var.machine_type}"
  zone = "${var.zone}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-postgresql",
    "${var.network}-firewall-openshift-console",
    "${var.network}-firewall-secure-forward",
  ]

  boot_disk {
    initialize_params {
      image = "${var.os}"
    }
  }

  metadata {
    hostname = "TODO"
  }

# connection {
#    user = "${coalesce(var.gcp_ssh_user, module.dcos-tested-gcp-oses.user)}"
#    private_key = "${local.private_key}"
#    agent = "${local.agent}"
#  }


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

#resource "google_compute_route" "name" {
  
#}
