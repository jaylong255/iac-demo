terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
        }

        random = {
            source  = "hashicorp/random"
        }
    }

    cloud {
        hostname = "app.terraform.io"
        organization = "cyberworld-builders"

        workspaces {
            name = "iac-demo"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}