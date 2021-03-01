## steps

1. open in devcontainer
2. create configuration
  - terraform files are called configurations
3. initialize dir (where configuration file lives)
  - command: `terraform init` 
  - installs plugins in `.terraform/` (like `node_modules/`)
  - creates configuration lock file (like `package-lock.json`)
4. format configurations for readability
  - command: `terraform fmt`
  - should be handled by VSC extension
  - ?like a linter/prettifier?
5. validate configuration syntax
  - command: `terraform validate`
  - like `docker-compose config`
6. apply the configuration
  - command: `terraform apply`
  - generates a configuration plan for applying infrastructure changes
    - like a version control merging strategy 
  - the plan consists of `add`, `change` and `destroy` tasks
    - after confirmation the "merge" will be applied to update the infrastructure