variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "component" {
    default = "cart"
}

variable "common_tages" {
    default = {
        Project = "roboshop"
        Terraform = true
    }
}