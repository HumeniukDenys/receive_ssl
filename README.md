# received_ssl
<table>
   <tr>
      <td>environment</td>
      <td><a href="https://github.com/HumeniukDenys/receive_ssl/blob/main/.github/workflows/terraform.yml">GitHub Actions</a></td>
   </tr>
   <tr>
      <td>master</td>
      <td><a href="https://github.com/HumeniukDenys/receive_ssl/actions?query=workflow%3Apipeline"><img src="https://github.com/playson-dev/terraform-tools/workflows/Terraform/badge.svg?branch=master" /></a></td>
   </tr>
</table>

The project purpose is to manage `received_ssl` DNS zone records using IaC
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
