variable "ami_id" {
    type = string
    default = ""
}

variable "instance_type" {
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow-all-terraform"
}

variable "sg_cidr" {
    type = list 
    default = ["0.0.0.0/0"]
}