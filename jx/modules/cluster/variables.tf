// ----------------------------------------------------
// Required Variables
// ----------------------------------------------------
variable "gcp_project" {
  description = "The name of the GCP project to create all resources"
}

variable "zone" {
  type = "string"
}

variable "region" {
  type = "string"
}

variable "cluster_name" {
  description = "Name of the K8s cluster"
}

variable "min_node_count" {}
variable "max_node_count" {}
variable "node_machine_type" {}

// ----------------------------------------------------
// Optional Variables
// ----------------------------------------------------
variable "node_preemptible" {
  description = "Use preemptible nodes"
  default     = "false"
}

variable "node_disk_size" {
  description = "Node disk size in GB"
  default     = "100"
}

variable "enable_kubernetes_alpha" {
  default = "false"
}

variable "enable_legacy_abac" {
  default = "true"
}

variable "auto_repair" {
  default = "false"
}

variable "auto_upgrade" {
  default = "false"
}

variable "created_by" {
  description = "The user that created the cluster"
  default     = "Unknown"
}

variable "created_timestamp" {
  description = "The timestamp this cluster was created"
  default     = "Unknown"
}

variable "monitoring_service" {
  description = "The monitoring service to use. Can be monitoring.googleapis.com, monitoring.googleapis.com/kubernetes (beta) and none"
  default     = "monitoring.googleapis.com/kubernetes"
}

variable "logging_service" {
  description = "The logging service to use. Can be logging.googleapis.com, logging.googleapis.com/kubernetes (beta) and none"
  default     = "logging.googleapis.com/kubernetes"
}

variable "admin_password" {
  description = "The admin password for the cluster"
  default     = "Admin_1234!"
}

variable "kaniko_sa_suffix" {
  description = "The string to append to the kaniko service-account name"
  default     = "ko"
}

variable "vault_sa_suffix" {
  description = "The string to append to the vault service-account name"
  default     = "vt"
}

variable "jxboot_sa_suffix" {
  description = "The string to append to the jx-boot service-account name"
  default     = "jb"
}

variable "storage_sa_suffix" {
  description = "The string to append to the storage service-account name"
  default     = "st"
}

variable "tekton_sa_suffix" {
  description = "The string to append to the tekton service-account name"
  default     = "tk"
}

variable "velero_sa_suffix" {
  description = "The string to append to the velero service-account name"
  default     = "velero"
}

variable "test_cluster_label" {
  description = "Describes whether the cluster is going to be used for BDD tests"
  default     = ""
}

variable "parent_domain" {
  description = "The parent domain to be allocated to the cluster"
}

variable "jx_namespace" {
  default = "jx"
}

variable "repository_enabled" {
  description = "Toggle on whether the repository module is enabled"
}
