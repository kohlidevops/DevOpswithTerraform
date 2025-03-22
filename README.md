# DevOpswithTerraform

### Install Terraform in AWS CloudShell (Amazon Linux)


Refer - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli


```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
```

#### First Terraform - To get the AMI ID


https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/Exercise1/InstID.tf


```
mkdir Terraform
cd Terraform
mkdir ex1
cd ex1
nano InstID.tf

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/Exercise1/InstID.tf

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
