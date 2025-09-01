# Useful Terraform Commands

## Core Workflow

```sh
terraform init                  # initialize terraform configuration
terraform init -backend-config="key=black-hole.tfstate" # init with custom backend key
terraform validate             # validate configuration syntax
terraform fmt                  # format terraform files
terraform plan                 # show planned changes
terraform plan -out=plan.out   # save plan to file
terraform apply                # apply changes
terraform apply plan.out       # apply saved plan
terraform destroy              # destroy all resources
terraform destroy -target=<resource> # destroy specific resource
```

## Inspecting State

```sh
terraform show                  # overwhelming output of all resources
terraform state list            # lists all resources in the state
terraform state show <resource> # shows detailed info about a specific resource
terraform output                # show all outputs
terraform output <output_name>  # show specific output value
```

## Managing State

```sh
terraform state pull            # retrieves the latest state file
terraform state push            # uploads a local state file  
terraform state rm <resource>   # removes a resource from the state
terraform state mv <source> <destination> # move resource in state
terraform import <resource> <id> # import existing resource into state
terraform refresh               # update state with real infrastructure
```

## Working with Workspaces

```sh
terraform workspace list        # list all workspaces
terraform workspace new <name>  # create new workspace
terraform workspace select <name> # switch to workspace
terraform workspace delete <name> # delete workspace
```

## Debugging and Troubleshooting

```sh
terraform console               # interactive console for testing expressions
terraform graph                 # generate dependency graph
terraform providers             # show provider requirements
terraform version               # show terraform and provider versions
TF_LOG=DEBUG terraform apply    # enable debug logging
```
