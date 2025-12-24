variable "ami_id" {
  type        = string
  description = "AMI id of devSecOps RHEL9"
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type    = map(string)
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

variable "sg_tags"{
    default = {
        Name = "allow_all"
    }
}