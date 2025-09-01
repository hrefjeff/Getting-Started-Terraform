# Useful Terraform Commands

## Inspecting State

```sh
terraform show                  # overwhelming output of all resources
terraform state list            # lists all resources in the state
terraform state show <resource> # shows detailed info about a specific resource
```

## Managing State

```sh
terraform init -backend-config="key=black-hole.tfstate"
terraform state pull            # retrieves the latest state file
terraform state push            # uploads a local state file
terraform state rm <resource>   # removes a resource from the state
```
