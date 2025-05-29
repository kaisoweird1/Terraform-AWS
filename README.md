# Terraform Infrastructure as Code (IaC)

##  What is Terraform?

Terraform is an open-source **Infrastructure as Code (IaC)** tool created by HashiCorp. It allows you to define and provision infrastructure using a high-level configuration language called **HCL (HashiCorp Configuration Language)**. With Terraform, you can manage infrastructure across various providers such as AWS, Azure, GCP, and more in a **safe, repeatable, and automated** manner.

---

## Why Use Terraform?

-  Automates infrastructure provisioning and management
-  Provides version control of infrastructure
-  Supports multi-cloud and hybrid environments
-  Modular and reusable configurations

---

##  Key Terraform Files and Their Purpose

### 1. `main.tf`
Defines the main **resources** (e.g., EC2, VPC, S3) and their configurations.

### 2. `variables.tf`
Declares **input variables** that allow customization of values used in Terraform configuration.

### 3. `terraform.tfvars`
Contains the **values** assigned to the variables declared in `variables.tf`. This file should **not be committed** to Git if it contains sensitive information like passwords or access keys.

### 4. `outputs.tf`
Defines **output values** to display after `terraform apply`, such as IP addresses, URLs, or ARNs of created resources.

### 5. `providers.tf`
Specifies the **provider configuration**, such as AWS region and credentials.

```hcl
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "version_name"
    }
  }
}

provider "aws" {
    region = "your region"
}
