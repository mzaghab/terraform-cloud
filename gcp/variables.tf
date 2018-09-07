variable "google_project_id" { 
    default = "terraform-215711"
}

variable "account_file" {
    default = "account.json"
}

variable "instance_count" {
    default = "3"
}
variable "machine_type" {
    default = "n1-standard-1"
}
variable "instance_name" {
    default = "my-instance"
}
variable "os" {
    default = "centos-7-v20170816"
}

variable "region" {
    default = "europe-west1"
}

variable "zone" {
    default = "europe-west1-b"
}

variable "zones" {
    default = {
        zone0 = "europe-west1-b"
        zone1 = "europe-west1-c"
        zone2 = "europe-west1-d"
    }
}

variable "network" {
  default     = "my-network"
}
variable "cidr" {
  default     = "192.168.16.0/26"
}