## tf-cvmfs-stratum1-refdata-GARR
Simple Terraform recipe to deploy a VM with attached volume over Openstack cloud to host a CVMFS Stratum0 
CVMFS stratum0 can be configured using [cvmfs configuration playbooks](https://github.com/Laniakea-elixir-it/cvmfs-config-playbooks) 

### Dependencies
- Terraform v1.1.2
- Openstack tenant 

### How to deploy
1. Fill the `variables.tf`  
2. Source the openstack rc file
3. Run `terraform apply` to create the infrastructure
4. Run `terraform destroy` to delete the infrastructure

if security groups are not already present uncomment *secgroup_icmp.tf* *secgroup_refdata-cvmfs.tf* to crete them
