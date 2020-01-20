variable "credentials" {
  type= "string"
}
variable "project" {
  type = "string"
}
variable "providerRegion" {
  type = "string"
  default = "us-central1-a"
}
variable "stage" {
  type = "string"
}
variable "username" {
  type = "string"
  default = "admin"
}
variable "password" {
  type = "string"
  default = "securitypasswordfork8cluster"
}
variable "initial_node_count" {
  type = "string"
  default = "1"
}
variable "app_name" {
  type = "string"
  default = "default"
}
variable "node_version" {
  type = "string"
  default = "1.13.11-gke.14"
}
variable "machine_type" {
  type = "string"
  default = "n1-standard-1"
}