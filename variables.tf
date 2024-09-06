variable "tenancy_ocid" {
  description = "Tenancy's OCID"
  default = "ocid1.tenancy.oc1..aaaaaaaa6x4n6qih27kh363ikpbsnvnjnf7exa45lxhwcookausqrwpeqglq"
}

variable "user_ocid" {
  description = "User's OCID"
  default = "ocid1.user.oc1..aaaaaaaazubfllcgqjupjhwntd5atqajsdse7h7wv2xvub22wqibvgr7rxbq"
}

variable "fingerprint" {
  description = "Key Fingerprint"
  default     = "0a:66:ed:a7:e1:ea:b5:d4:d0:41:18:9c:9d:53:ea:80"
}

variable "private_key_path" {
  description = "The private key path to pem."
  default     = "/root/.oci/api_key.pem"
}

variable "region" {
  description = "OCI Region"
  default = "us-ashburn-1"
}

variable "compartment_ocid" {
  description = "Compartment's OCID where VCN will be created. "
  default = "ocid1.vcn.oc1.iad.amaaaaaafr6xoeqavg6rim4v3rsgujr5xitdbjbh7eausgs5mumpnusepp4a"
}

variable "ssh_authorized_keys_path" {
  description = "Public SSH keys path to be included in the ~/.ssh/authorized_keys file for the default user on the instance."
  default     = ""
}

variable "ssh_private_key_path" {
  description = "The private key path to access instance."
  default     = ""
}

variable "compute_shape" {
  default     = "VM.Standard.A1.Flex"
}

variable "compute_name" {
  default     = "master3"
}
variable "compute_subnet_id" {
  default     = "ocid1.subnet.oc1.iad.aaaaaaaabp2avw2dratjeddcc7kmsuzcd6w3prjhwxz47ide3tdszrsuky4a"
}
