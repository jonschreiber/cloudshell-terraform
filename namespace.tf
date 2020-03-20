data "oci_objectstorage_namespace" "ns" {
  #Optional
  compartment_id = var.compartment_ocid
}

output namespace {
  value = data.oci_objectstorage_namespace.ns.namespace
}

resource "oci_objectstorage_namespace_metadata" "namespace-metadata1" {
  namespace                    = data.oci_objectstorage_namespace.ns.namespace
  default_s3compartment_id     = var.compartment_ocid
  default_swift_compartment_id = var.compartment_ocid
}

data oci_objectstorage_namespace_metadata namespace-metadata1 {
  namespace = data.oci_objectstorage_namespace.ns.namespace
}
