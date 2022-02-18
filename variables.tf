variable "instance_name" {
  default = "cvmfs-s0"
}

variable "image" {
  default = "0a6993d3-61fa-42a6-9202-d3e563f5c3cc"
}

variable "flavor" {
  default = "4cpu-4GB-60dsk"
}

variable "keypair" {
  default = "laniakea-robot"
}

variable "ssh_user_name" {
  default = "ubuntu"
}

variable "network_name" {
  default = "Public_Net"
}

variable "volume_name" {
  default = "cvmfs-s0-main-volume"
}

variable "volume_buffer_name" {
  default = "cvmfs-s0-buffer-volume"
}

variable "device" {
  default = "/dev/vdb"
}

variable "buffer_device" {
  default = "/dev/vdc"
}

variable "volume_size" {
  default = 500
}

variable "volume_buffer_size" {
  default = 100
}

