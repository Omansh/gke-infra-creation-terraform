variable path {
    default = "./gcp-terraform-project-keys.json"
}

variable "project_id" {
  type        = string
  description = "The project ID to create the cluster."
  default = "terrafrom-gcp-364213"
}

variable "region" {
  type        = string
  description = "The region to create the cluster."
  default = "us-central1"
}

variable "zones" {
  type        = list(string)
  description = "The zones to create the cluster."
  default = ["us-central1-c"]
}

variable "name" {
  type        = string
  description = "The name of the cluster."
  default = "gke-created-via-terraform"
}

variable "machine_type" {
  type        = string
  description = "Type of the node compute engines."
  default = "n1-standard-1"
}

variable "min_count" {
  type        = number
  description = "Minimum number of nodes in the NodePool. Must be >=0 and <= max_node_count."
  default = 1
}

variable "max_count" {
  type        = number
  description = "Maximum number of nodes in the NodePool. Must be >= min_node_count."
  default = 3
}

variable "service_account" {
  type        = string
  description = "The service account to run nodes as if not overridden in `node_pools`. The create_service_account variable default value (true) will cause a cluster-specific service account to be created."
  default = "terraform-gcp@terrafrom-gcp-364213.iam.gserviceaccount.com"
}

variable "initial_node_count" {
  type        = number
  description = "The number of nodes to create in this cluster's default node pool."
  default = 3
}