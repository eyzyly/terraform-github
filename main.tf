terraform { 
    required_providers {
         github = { source = "integrations/github" 
         version = "~> 5.0" 
         } 
    } 
} 

provider "github" {
     token = var.github_token 
     owner = var.github_owner 
} 

resource "github_repository" "demo" {
     name = "terraform-demo-repo" 
     description = "Created with Terraform" 
     visibility = "public" 
}