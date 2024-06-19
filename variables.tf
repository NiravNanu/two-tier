variable "aws_region" {
    description = "The AWS region to create things in."
    default = "us-east-1"
}

variable "security_group" {
    description = "Name of security group" 
    default = "jenkins-sgroup-june-2024"
  
}
variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "maven-key.pem" 
}

variable "ami_id" {
  description = "Ami for Ubuntu EC2 "
  default = "ami-08a0d1e16fc3f61ea"
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "tag_name" {
    default = "my-ec2-instance"
  
}

variable "bucket_prefix" {
     type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
    default     = "my-s3bucket-"
}

variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}