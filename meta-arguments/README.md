\# Terraform Count Meta-Argument



This folder demonstrates how to create multiple AWS EC2 instances dynamically using Terraform's `count` meta-argument.



\## Files in this folder



1\. \*\*`count.tf`\*\*  

&nbsp;  - Creates a VPC, subnet, security group, and multiple EC2 instances.  

&nbsp;  - The EC2 instances are created using the `count` meta-argument to deploy multiple servers with sequential names (`Server-1`, `Server-2`, etc.).



2\. \*\*`provider.tf`\*\*  

&nbsp;  - Configures the AWS provider and sets the AWS region (`ap-south-1`).



3\. \*\*`terraform.tf`\*\*  

&nbsp;  - Specifies required providers and Terraform version constraints.



---



\## How it Works



\- The `count` meta-argument in `aws\_instance.meta\_ec2` allows Terraform to create \*\*4 EC2 instances\*\* automatically.  

\- The `count.index` is used to name each instance uniquely: `Server-1`, `Server-2`, etc.  

\- All resources (VPC, subnet, security group) are created in the same configuration and automatically linked.  



---



\## Usage



step 1. Initialize Terraform:-



```bash

terraform init



step 2. Plan the execution:-



terraform plan



step 3. Apply the configuration:-



terraform apply --auto-approve



step 4. Check the created resources:-



aws ec2 describe-instances --region ap-south-1



step 5. Destroy resources:-



terraform destroy











