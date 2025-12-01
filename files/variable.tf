variable "region" {
  default = "ap-south-1"
}

variable "ami" {
  default = "ami-0d176f79571d18a8f" 
  }

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "mumbai"
}

variable "web-sg" {
    default = ["sg-0e5e7576376fc7a0d"]
  
}