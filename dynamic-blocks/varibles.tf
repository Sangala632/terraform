variable "ami_id" {
  type        = string
  description = "AMI id of devSecOps RHEL9"
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "helloworld"
    purpose = "varibles-demo"
  }
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "allowing all ports and all traffic from internet"
}

variable "from_port" {
  type    = number
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow_all"
  }
}
/* variable "environment" {
    default = "dev"
}

variable "instances" {
    type    = list
    default = ["mongodb","redis","mysql","rabbitmq"]
}

variable "Domain_name" {
    default = "hellodevsecops.space"
}

variable "zone_id" {
    default = "Z0168679G0Y1V181BPMR"
} */

variable "ingress_ports" {
  default = [ #list(map)
    {
      from_port = 22
      to_port   = 22
    },
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    }

  ]
}