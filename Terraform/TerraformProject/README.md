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


