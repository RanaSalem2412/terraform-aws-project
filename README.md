#  AWS Infrastructure using Terraform

##  Project Overview
This project demonstrates how to build a scalable and secure AWS infrastructure using **Terraform (Infrastructure as Code)**.  

The infrastructure includes core AWS services such as VPC, Subnets, EC2 instances, Security Groups, Internet Gateway, and routing configuration.

The goal of this project is to automate cloud infrastructure provisioning instead of manual setup, ensuring consistency, scalability, and reliability.

---

##  Architecture Components

This project provisions the following AWS resources:

- VPC (Virtual Private Cloud)
- Public and Private Subnets
- Internet Gateway
- Route Tables (Public & Private)
- Security Groups
- EC2 Instances:
  - Bastion Host (Public Subnet)
  - Application Server (Private Subnet)

---

## Technologies Used

- Terraform (IaC)
- AWS (EC2, VPC, Networking)
- Linux (for EC2 instances)
- Git & GitHub

---

##  Project Structure

terraform-aws-project/

├── provider.tf
├── vpc.tf
├── subnet-public.tf
├── subnet-private.tf
├── internet-gateway.tf
├── route-table-public.tf
├── route-table-private.tf
├── routes.tf
├── route-associations.tf
├── security-group-bastion.tf
├── security-group-app.tf
├── ec2-bastion.tf
├── ec2-app.tf
├── data.tf
└── README.md

---

##  How to Deploy

### 1. Initialize Terraform
terraform init

### 2. Validate Configuration
terraform validate

### 3. Plan Infrastructure
terraform plan

### 4. Apply Infrastructure
terraform apply -auto-approve

---

##  Security Design

- Bastion Host is placed in Public Subnet  
- Application Server is placed in Private Subnet  
- Access to private EC2 is only allowed through Bastion Host  
- Security Groups restrict unnecessary inbound traffic  

---

##  Key Features

- Fully automated AWS infrastructure provisioning  
- Modular and structured Terraform code  
- Secure network design (Public / Private segregation)  
- Reusable infrastructure setup  
- Scalable architecture ready for production use  




##  Notes

This project is part of my DevOps learning journey and demonstrates Infrastructure as Code (IaC) principles using Terraform on AWS.
