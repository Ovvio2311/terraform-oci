data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_ocid
}

resource "oci_core_instance" "ubuntu_instance" {
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[2].name
    compartment_id = "ocid1.vcn.oc1.iad.amaaaaaafr6xoeqavg6rim4v3rsgujr5xitdbjbh7eausgs5mumpnusepp4a"
    fault_domain        = "CMoP:US-ASHBURN-AD-1"
    shape = "VM.Standard.E2.1.Micro"#"VM.Standard.A1.Flex"
    source_details {
        source_id = "ocid1.image.oc1.iad.aaaaaaaawhlzdz3uby6yfgylrpogydmci2t45htsr3jzgjydr3h4cxgyeaga"
        source_type = "image"
    }
  

    display_name = "master3"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.vcn.oc1.iad.amaaaaaafr6xoeqavg6rim4v3rsgujr5xitdbjbh7eausgs5mumpnusepp4a"
    }
    metadata = {
      ssh_authorized_keys = file("ssh-key.pub")
      } 
    preserve_boot_volume = false
}

#   shape_config {
  #   ocpus         = 2
  #   memory_in_gbs = 12
  # }