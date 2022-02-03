# received_ssl
## Information about last run workflow:
<table>
   <tr>
      <td>environment</td>
      <td><a href="https://github.com/HumeniukDenys/receive_ssl/actions/workflows/terraform.yml">GitHub Actions</a></td>
   </tr>
   <tr>
      <td>master</td>
      <td><a href="https://github.com/HumeniukDenys/receive_ssl/actions?query=workflow%3Apipeline"><img src="https://github.com/HumeniukDenys/receive_ssl/actions/workflows/terraform.yml/badge.svg?branch=main" /></a></td>
   </tr>
</table>

## About repo
This project was designed for automatisation receive or renew ssl certs.
It works stand-alone and runs once every 3 days on a schedule.
All certificates that were previously issued through this workflow will be re-issued 
automatically 5-3 days prior to expiration.
Workflow can also be launched manually via a pull request or push to the master branch.
All received certificates are located in the catalog "./certificates/*" and include:
- Certificates(*.crt);
- RSA keys for certificates(*.key);
- Full-chains certificates(*.pem).

!!! Important: Before you start issuing a certificate, make sure that the domain is 
delegated to CloudFlare !!!

## How it use
1. Create a branch "testing" and clone the project from the "master" branch into it.
2. Go to branch "testing" and enter the domain for which you want to issue a 
   certificate in domain.tf. 
   Example: 
       module "needdomaincom" {
         common_name   = "needdomain.com"
         source        = "./modules/get_ssl"
         email_address = "admin@needdomain.com"
       }
3. Check the workflow process in github action, if all is ok, automatically 
   will be create pull request to "master" brunch.
4. You can see all changes in pull request. Check pull request, approve it and 
   close brunch "testing".
5. After approve pull request will be run workflow to receive ssl cert. 
   Logs from this process you can see in github action.
6. Upon successful completion of the process, the certificates will be placed 
   in the appropriate directory in "./certificates/*"

P.S: If you need to change interval to renew certificate, you can do it in 
     "./modules/get_ssl/variables.tf", variable "min_days_remaining" default = 5.

     If you need to remove a domain from support, you can do it in a few steps:
     - remove module from tfstate;
     - remove module from domain.tf.
