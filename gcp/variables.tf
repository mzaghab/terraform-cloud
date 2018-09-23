variable "google_project_id" { 
    default = "terraform-215711"
}

variable "account_file" {
    default = "account.json"
}

variable "instance_type_n1_std1" {
    default = "n1-standard-1" //1vcpu 3,75G (24,67 $ par mois estimé / Tarif horaire effectif 0,034 $ )
}

variable "instance_type_n1_std2" {
    default = "n1-standard-2" //2vcpu 7,5G (48,95 $ par mois estimé / Tarif horaire effectif 0,067 $)
}

variable "instance_type_n1_std4" {
    default = "n1-standard-4" //4vcpu 15G(97,49 $ par mois estimé / Tarif horaire effectif 0,134 $)    
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

variable "user" {
  default     = "mounir"
}

variable "ssh_pub_key" {
  default     = "~/.ssh/id_rsa.pub"
}
