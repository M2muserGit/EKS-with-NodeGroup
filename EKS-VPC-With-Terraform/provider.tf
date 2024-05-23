//This block defines an AWS provider for Terraform.

provider "aws" {
  default_tags { 
    tags = local.tags
  }
}


// default_tags/// This section configures default tags that will be applied to all AWS resources created by this Terraform configuration// 

//  tags = local.tags  This line tells Terraform to use the values defined in the `local.tags` variable for the default tags. The `local` refers to local values defined within the Terraform configuration file itself, and `tags` is likely a map containing key-value pairs for the tags. //

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.67.0"
    }
  }

  required_version = ">= 1.4.2"
}
