# myconfig.top
[![pipeline status](https://gitlab.com/AIRpwnz/myconfig.top/badges/master/pipeline.svg)](https://gitlab.com/AIRpwnz/myconfig.top/-/commits/master)

The project purpose is to manage `myconfig.top` DNS zone records using IaC
approach.

## Usage

1. Clone/checkout the project `master` branch and pull the latest changes from
remote.
2. Create a new branch with name reflecting changes to be applied.
3. Prepare changes locally, commit them and push to remote.
4. Review CI/CD pipeline status and make sure that Terraform plan shows only
expected changes.
5. Open merge request from your branch to the `master` branch and provide short
description what changed and why.
6. Merge changes into the `master` branch, review Terraform plan and manually
trigger `apply` job to apply changes.
