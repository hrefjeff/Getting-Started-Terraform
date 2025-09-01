# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Common Terraform Commands

### State Management
```sh
terraform init -backend-config="key=black-hole.tfstate"  # Initialize with S3 backend
terraform state list                                     # Lists all resources in state
terraform state show <resource>                          # Shows detailed resource info
terraform state pull                                     # Retrieves latest state file
terraform state push                                     # Uploads local state file
terraform state rm <resource>                           # Removes resource from state
```

### Core Workflow
```sh
terraform plan          # Show planned changes
terraform apply         # Apply changes
terraform destroy       # Destroy all resources
terraform show          # Show current state (verbose)
```

## Repository Architecture

This is a Terraform learning repository organized into modules and solutions:

- **m4_solution/**, **m5_solution/**, **m6_solution/**: Complete module solutions for different lessons
- **s3_bucket_create/**: S3 bucket configuration with versioning and encryption for state storage
- **base_web_app/**: Basic web application template
- **commands/**: Shell scripts with example commands for each module (m1_commands.sh, etc.)

### Terraform Configuration Structure
Each solution module follows standard Terraform file organization:
- `main.tf`: Primary resource definitions
- `variables.tf`: Input variable declarations  
- `outputs.tf`: Output value definitions
- `locals.tf`: Local value definitions (where applicable)
- `terraform.tf`: Provider requirements and backend configuration

### AWS Provider Configuration
All configurations use AWS provider version ~> 5.0 and are designed to work in us-east-1 region by default. The S3 backend is configured to use a "black-hole" bucket for remote state storage.