variable "admin_username" {
  description = "The username for the local account that will be created on the new VM."
  type        = string
  default     = "adi"
  sensitive   = true
}
variable "admin_password" {
  description = "The password for the local account that will be created on the new VM."
  type        = string
  default     = "Adikoren1"
  sensitive   = true

}
variable "db_username" {
  description = "The username for the db."
  type        = string
  default     = "adi"
  sensitive   = true
}
variable "db_password" {
  description = "The password for the db."
  type        = string
  default     = "adikoren"
  sensitive   = true

}
