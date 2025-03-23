# DevOps with Terraform

#### Install Terraform in EC2 Ubunu

To launch EC2 Ubuntu24 with T3.medium and install Terraform on it

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli


```
sudo -i
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform
terraform -help
```


#### To associate IAM Role to Terraform instance

To create an IAM role with Administrator policy and associate with IAM role


![image](https://github.com/user-attachments/assets/a6bd78e7-7b1e-40ea-b260-81638cf481eb)


#### To create a S3 bucket in NV region


![image](https://github.com/user-attachments/assets/cfa37ecc-4ade-43f0-b35d-46bb01562808)


Bucket name - latchudevopsterraform1

To create a folder named "terraform" in S3 bucket


#### To create a S3 as Backend

SSH to terrafrom instance

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/backend.tf


```
sudo -i
mkdir terraform
cd terraform
nano backend.tf
terraform init
```

#### To create providers


https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/providers.tf


#### To create variables 


https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/vars.tf


#### To create a Keypair

SSH to Terraform instance

```
sudo -i
cd terraform
ssh-keygen
:vprofilekey
ls -lh
cat vprofilekey.pub
//copy paste the pub content in keypairs.tf file
```

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/keypairs.tf


Now execute

```
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```


![image](https://github.com/user-attachments/assets/ad80165c-b1ab-4a0a-82ab-38bc1fe89a1e)


The keypair has been created in AWS console


![image](https://github.com/user-attachments/assets/dedc20ac-09b8-4240-9d00-5df1844b678f)


#### To create a VPC and its component


```
sudo -i
cd terraform
nano vpc.tf

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/vpc.tf

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

The VPC and its components has been created 


![image](https://github.com/user-attachments/assets/19361687-837d-4bdf-a960-1725fa9ad04f)


#### To create a Security Group 

```
sudo -i
cd terraform
nano secgrp.tf

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/secgrp.tf

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

The security group has been created


![image](https://github.com/user-attachments/assets/e9083213-a6ff-4c98-9eae-d5f2f2c80392)


#### To create a backend services - RDS, ElastiCache & Amazon MQ


```
sudo -i
cd terraform
nano backend-services.tf

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/backend-services.tf

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

RDS has been created - It is up and running


![image](https://github.com/user-attachments/assets/b85651e9-8b61-453e-9200-7aabb957d3db)


ElastiCache has been up and running


![image](https://github.com/user-attachments/assets/60e2eefa-bd10-466a-b0c9-9c831c01a58a)


Amazon MQ has been initialized


![image](https://github.com/user-attachments/assets/3c212c2e-59b5-4fed-8d12-e1dd39a18ec4)



#### To create a Elastic Beanstalk app and environment

First create an IAM role and trusted policy as EC2 with below policies


![image](https://github.com/user-attachments/assets/ea2c8f7c-17ef-4a56-8aa2-432ef92cc54f)


```
sudo -i
cd terraform
nano bean-app.tf

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/bean-app.tf

nano bean-env.tf

https://github.com/kohlidevops/DevOpswithTerraform/blob/main/Terraform/TerraformProject/bean-env.tf

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```


The environment has been created


![image](https://github.com/user-attachments/assets/cd61b32b-912c-4a13-8e37-4cfbc328ba48)


If you hit the Beanstalk env URL


![image](https://github.com/user-attachments/assets/08950649-29df-45f4-b679-3b5a4a6edd9e)


#### To setup Bastion Host and DB Initialization
