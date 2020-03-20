# cloudshell-terraform

## Intro
This demo shows how to use the [OCI Terraform Provider](https://www.terraform.io/docs/providers/oci/) in [Oracle Cloud Shell](https://blogs.oracle.com/cloud-infrastructure/announcing-oracle-cloud-shell)

## Getting started
1. Open the Oracle Cloud Console
1. In Cloud Shell, git clone this repo: [https://github.com/jonschreiber/cloudshell-terraform](https://github.com/jonschreiber/cloudshell-terraform)
1. cd to the `cloudshell-terraform` directory
1. Initialize the OCI Terraform provider: `terraform init`
1. Plan your job: `terraform plan`
	1. Copy your compartment OCID from the OCI Console
	1. Enter your region name
