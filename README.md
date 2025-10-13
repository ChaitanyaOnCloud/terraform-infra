# 🌩️ Terraform AWS Infrastructure – VPC, EC2, S3 & IAM Setup

This project automates the provisioning of AWS infrastructure using **Terraform**.  
It creates a **Virtual Private Cloud (VPC)**, **EC2 instance**, **S3 bucket**, and **IAM role/policy** in a modular and reusable way.

---

## 🚀 Project Overview

This Terraform project defines a simple yet powerful AWS infrastructure setup to demonstrate IaC (Infrastructure as Code) concepts.

### Resources Created:
| Resource | Description |
|-----------|--------------|
| **VPC** | Creates a Virtual Private Cloud with CIDR block `10.0.0.0/16` |
| **Subnet** | Creates a subnet `10.0.1.0/24` inside the VPC |
| **S3 Bucket** | (Defined in `s3.tf`) Creates an S3 bucket for storage |
| **IAM Role/Policy** | (Defined in `iam.tf`) Attaches IAM roles/policies for resource access |
| **EC2 Instance** | (Defined in `Main.tf`) Launches an instance inside the VPC |
| **Provider Configuration** | (Defined in `Provider.tf`) Configures the AWS provider and region |

---

## 🧩 File Structure

| File Name | Description |
|------------|-------------|
| **Provider.tf** | Configures the AWS provider and region |
| **vpc.tf** | Defines the VPC and subnet configuration |
| **iam.tf** | Creates IAM roles and attaches policies |
| **s3.tf** | Creates an S3 bucket for storing data or state files |
| **Main.tf** | Integrates and references all modules/resources |
| **.gitignore** | Ignores sensitive or unnecessary Terraform files |
| **.terraform.lock.hcl** | Maintains provider dependency versions |

---

## 🛠️ Prerequisites

Before running this project, ensure you have:

- 🧑‍💻 **AWS Account**
- 🔐 **IAM User** with programmatic access
- 🧰 **Terraform v1.5+** installed
- 🌍 **AWS CLI** configured (`aws configure`)

---

## ⚙️ How to Use

1. **Clone the Repository**
   ```bash
   git clone https://github.com/ChaitanyaOnCloud/terraform-infra.git
   cd terraform-infra
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Validate Configuration**
   ```bash
   terraform validate
   ```

4. **Preview the Infrastructure**
   ```bash
   terraform plan
   ```

5. **Apply and Create Infrastructure**
   ```bash
   terraform apply -auto-approve
   ```

6. **Destroy Infrastructure (optional)**
   ```bash
   terraform destroy -auto-approve
   ```

---
