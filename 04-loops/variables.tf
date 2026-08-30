variable "environment" {
  type        = string
  default     = "dev"
}
variable "project"{
  type = string
  default = "roboshop"
}
variable "ami_id" {
  type        = string
  description = "EC2 instance ami_id"
  default     = "ami-0220d79f3f480ecf5"
}
variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t3.micro"

   validation {
    condition     = contains(["t3.micro", "t3.small","t3.medium","t3.large"], var.instance_type)
    error_message = "Instance Type shouls be either t3.micro or t3.small'."
  }
}
variable "sg_name"{
  type = string
  default = "allow_terraform"
}


variable "port"{
  type = number
  default = 0
}

variable "cidr"{
  type = list
  default = ["0.0.0.0/0"]
}
variable "instances"{
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
    type = list
}
variable "zone_id"{
  default = "Z0259442CKV1OWK97ZR9"
}
variable "domain_name"{
  default = "vinaydevops.online"
}