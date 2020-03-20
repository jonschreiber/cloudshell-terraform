# Configure the Oracle Cloud Infrastructure provider to use Instance Principal based authentication
variable "region" {}
variable "compartment_ocid" {}

provider "oci" {
  region = var.region
}

resource "oci_objectstorage_bucket" "bucket1" {
  compartment_id = var.compartment_ocid
  namespace      = data.oci_objectstorage_namespace.ns.namespace
  name           = "tf-example-bucket"
  access_type    = "NoPublicAccess"
}

data "oci_objectstorage_bucket_summaries" "buckets1" {
  compartment_id = var.compartment_ocid
  namespace      = data.oci_objectstorage_namespace.ns.namespace

  filter {
    name   = "name"
    values = ["${oci_objectstorage_bucket.bucket1.name}"]
  }
}

output buckets {
  value = data.oci_objectstorage_bucket_summaries.buckets1.bucket_summaries
}