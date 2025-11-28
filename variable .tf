# STRING type
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}

# NUMBER type
variable "instance_count" {
  type        = number
  default     = 1
}

# LIST of strings
variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

# MAP type
variable "tags" {
  type = map(string)
  default = {
    Project = "TerraformDemo"
    Owner   = "Nisha"
  }
}

# SET type (unique CIDRs)
variable "subnet_cidrs" {
  type = set(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

# OBJECT type for instance configuration
variable "instance_config" {
  type = object({
    ami           = string
    instance_type = string
  })
  default = {
    ami           = "ami-0ecb62995f68bb549"
    instance_type = "t2.micro"
  }
}

# TUPLE type
variable "ssh_ports" {
  type    = tuple([number, number])
  default = [22, 80]
}
