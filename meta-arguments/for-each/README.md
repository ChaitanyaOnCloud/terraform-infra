\# Terraform S3 Buckets Example with `for\_each`



This folder demonstrates how to create multiple \*\*AWS S3 buckets\*\* dynamically using Terraform's `for\_each` meta-argument.



\## Files in this folder



1\. \*\*`buckets.tf`\*\*  

&nbsp;  Defines the `aws\_s3\_bucket` resource and uses `for\_each` to create multiple buckets based on the `buckets` variable.



2\. \*\*`variable.tf`\*\*  

&nbsp;  Contains the `buckets` variable with a default map of bucket names for different environments (`dev`, `test`, `prod`).



3\. \*\*`terraform.tf`\*\*  

&nbsp;  Configures the AWS provider and sets the required Terraform provider version.



4\. \*\*`output.tf`\*\*  

&nbsp;  Outputs the names of all S3 buckets created by Terraform.



\## How it Works



\- The `for\_each` meta-argument loops over the `buckets` variable map.  

\- Each key (`dev`, `test`, `prod`) becomes the \*\*environment tag\*\* for the bucket.  

\- Each value in the map becomes the \*\*bucket name\*\*.  

\- The `output` block returns a list of all bucket names created.



\## Usage



step 1. Initialize Terraform:

&nbsp;  ```bash

&nbsp;  terraform init





step 2.Plan the execution



&nbsp;  terraform plan





step 3.Apply the configuration:



&nbsp;terraform apply -auto-approve





step 4.Check the outputs



&nbsp;terraform output bucket\_names





