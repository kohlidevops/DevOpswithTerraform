# DevOps with Terraform

We have below files to work with Terraform

1. InstID.tf
2. Instance.tf
3. Keypair.tf
4. SecGrp.tf
5. provider.tf

```
cd Excercise2
//Now generate the keygen
ssh-keygen
keyname: dove
//now you have dove and dove.pub key - To update the dove.pub in Keypair.tf
terraform fmt
terraform validate
terraform plan
terraform apply
```

This will launch a new instance with given AMI ID, Keypair, Security group in the expected region

If you do again terraform plan > Nothing changed


#### To change something in SecGrp.tf like port 22 to 3389

```
terraform plan
terraform apply
```

Now Terraform will update the Security group


#### Suppose if you want to change the AMI ID, then running instance will be terminate and new instance will be launch with the new AMI ID


#### To change the Keypair

To create new key

```
ssh-keygen
name: test-key
//now you test-key and test-key.pub available
//To update the test-key.pub in Keypair.tf
terraform plan
//Now 1 to add and 0 to destroy
```

#### To update the state in Instance.tf

To stop the instance

```
terraform plan
terraform apply
```

Nothing will change - If there is no state is available in Instance.tf then terraform doesn't know the state.

To update the state in Instance.tf and stop the instance

But if state is available then terraform know then it will launch new instance

```
terraform plan
terraform apply
```

The new instance has been launched


#### To destroy this Excercise

```
cd Excercise2
terraform destroy
```





