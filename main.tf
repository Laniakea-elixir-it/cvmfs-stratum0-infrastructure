resource "openstack_compute_instance_v2" "cvmfs-s0" {
  name            = "${var.instance_name}"
  image_id        = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.keypair}"
  security_groups = ["default","ssh","icmp","refdata-cvmfs"]
  network {
    name = "${var.network_name}"
  }
}

resource "openstack_blockstorage_volume_v2" "cvmfs-s0-laniakea-main-vol" {
  name = "${var.volume_name}"
  size = "${var.volume_size}"
}

resource "openstack_compute_volume_attach_v2" "cvmfs-s0-laniakea-main-vol" {
  instance_id = "${openstack_compute_instance_v2.cvmfs-s0.id}"
  volume_id = "${openstack_blockstorage_volume_v2.cvmfs-s0-laniakea-main-vol.id}"
  device = "${var.device}"
}

resource "openstack_blockstorage_volume_v2" "cvmfs-s0-laniakea-buffer-vol" {
  name = "${var.volume_buffer_name}"
  size = "${var.volume_buffer_size}"
}

resource "openstack_compute_volume_attach_v2" "cvmfs-s0-laniakea-buffer-vol" {
  instance_id = "${openstack_compute_instance_v2.cvmfs-s0.id}"
  volume_id = "${openstack_blockstorage_volume_v2.cvmfs-s0-laniakea-buffer-vol.id}"
  device = "${var.buffer_device}"
}
