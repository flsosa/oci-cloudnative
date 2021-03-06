# Copyright (c) 2020 Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

# OCI Provider
variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {
  default = "us-ashburn-1"
}
variable "user_ocid" {
  default = ""
}
variable "fingerprint" {
  default = ""
}
variable "public_ssh_key" {
  default = ""
}

# Cluster Details
variable "cluster_name" {
  default = "MuShop-cluster"
}
variable "cluster_visibility" {
  default = "Private"
}
variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
  default = false
}
variable "cluster_options_admission_controller_options_is_pod_security_policy_enabled" {
  default = false
}

# Node Pool Details
variable "node_pool_name" {
  default = "pool1"
}

variable "k8s_version" {
  default = "v1.15.7"
}
variable "num_pool_workers" {
  default = 3
}
variable "node_pool_shape" {
  default = "VM.Standard2.1"
}
variable "image_operating_system" {
  default = "Oracle Linux"
}
variable "image_operating_system_version" {
  default = "7.7"
}
variable "generate_public_ssh_key" {
  default = true
}

# Network Details
variable "network_cidrs" {
  type = map(string)

  default = {
    VCN-CIDR                = "10.20.0.0/16"
    SUBNET-REGIONAL-CIDR    = "10.20.10.0/24"
    LB-SUBNET-REGIONAL-CIDR = "10.20.20.0/24"
    ALL-CIDR                = "0.0.0.0/0"
  }
}

# MuShop
variable "mushop_mock_mode_all" {
  default = false
}

variable "db_admin_name" {
  default = "oadb-admin"
}

variable "db_connection_name" {
  default = "oadb-connection"
}

variable "db_wallet_name" {
  default = "oadb-wallet"
}

variable "oos_bucket_name" {
  default = "oos-bucket"
}

# OCI Services
## Autonomous Database
variable "autonomous_database_cpu_core_count" {
  default = 1
}

variable "autonomous_database_data_storage_size_in_tbs" {
  default = 1
}

variable "autonomous_database_data_safe_status" {
  default = "REGISTERED" # REGISTERED || NOT_REGISTERED
}

variable "autonomous_database_db_version" {
  default = "19c"
}

variable "autonomous_database_license_model" {
  default = "BRING_YOUR_OWN_LICENSE"
}

variable "autonomous_database_is_auto_scaling_enabled" {
  default = false
}

variable "autonomous_database_is_free_tier" {
  default = false
}

variable "autonomous_database_wallet_generate_type" {
  default = "SINGLE"
}
