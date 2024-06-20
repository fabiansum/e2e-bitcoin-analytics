## Azure account level config: location
variable "location" {
  description = "Azure location"
  type        = string
  default     = "East US"
}

variable "host_os" {
  type = string
}

variable "budget_amount" {
  description = "The amount for the budget"
  type        = number
  default     = 5
}

variable "alert_contact_email" {
  description = "Email address to receive budget alerts"
  type        = string
  default     = "bg_analytics@outlook.com"
}
