variable "ami_id" {
    type = string
    default = "ami-091138d0f0d41ff90"
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

variable "tags" {
    type = map 

    default = {
        Name = "MongoDB"
        Environment = "true"
        Project = "Roboshop"
        Component = "MongoDB"
    }
}