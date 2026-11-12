variable "instance_name" {
  description = "Value of the EC2 instance's Name tag."
  type        = string
  default     = "learn-terraform"
}

variable "instance_type" {
  description = "The EC2 instance's type."
  type        = string
  default     = "t3.micro"
}

variable "aws_ami" {
  description = "Konfiguracja obrazów AMI dla różnych systemów"
  type = object({
    ubuntu = object({
      id = string
    })
  })
  default = {
    ubuntu = {
      id = "ami-021aaf3749be66813"
    }
  }
}
