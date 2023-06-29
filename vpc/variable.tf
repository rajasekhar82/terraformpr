variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"  
}
variable "instance_tenancy" {
    type = string
    default = "default"
  
}
variable "dns_support" {
    type = bool
    default = true
  
}
variable "dns_hostname" {
    type = bool
    default = true
  
}
variable "tags" {
    type = map(string)
    default = {
      Name = "timing"
      Terraform= "true"
      Environment= "Dev"
    }
  
}
variable "public_subnets" {
    default = {
        public_subnet-1 = {
            Name= "public-subnet-1"
            cidr_block= "10.0.2.0/24"
            az="ap-south-1a"
        }
        public_subnet-2 = {
            Name= "public-subnet-2"
            cidr_block= "10.0.3.0/24"
            az="ap-south-1b"
        }

    }

}
variable "private_subnets" {
    default = {
        private_subnet-1= {
            Name ="private-subnet-1"
            cidr_block="10.0.4.0/24"
            az="ap-south-1c"
        }
        private_subnet-2= {
            Name ="private-subnet-2"
            cidr_block="10.0.5.0/24"
            az="ap-south-1c"
        }

    }

}
variable "env" {
    type = string
    default = "Dev"
  
}