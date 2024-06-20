## Azure account level config: location
variable "location" {
  description = "Azure location"
  type        = string
  default     = "East US"
}

## Key to allow connection to our VM instance
variable "key_name" {
  description = "Virtual machine key name"
  type        = string
  default     = "sde-key"
}

## EC2 instance type
variable "instance_type" {
  description = "Instance type for EMR and EC2"
  type        = string
  default     = "m4.xlarge"
}

## Alert email receiver
variable "alert_email_id" {
  description = "Email id to send alerts to "
  type        = string
  default     = "bg_analytics@outlook.com"
}
