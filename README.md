# Terraform-aws-project


![Screenshot 2025-04-11 064533](https://github.com/user-attachments/assets/e01f295b-5279-4b6b-b8d6-51b0cf801f43)


 # 🌐 Terraform AWS Project

This project provisions a complete AWS infrastructure using **Terraform** and **custom modules**. It follows best practices for modular design, remote state management, provisioning, and secure networking.

---

## 📦 Module Overview

| Module               | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `vpc`                | Creates the VPC and enables DNS support                                     |
| `subnets`            | Creates public and private subnets across 2 Availability Zones              |
| `igw`                | Attaches an Internet Gateway to the VPC                                     |
| `route_table`        | Creates main route tables and associations                                  |
| `private_route_table`| Handles private subnet routing                                              |
| `security_groups`    | Defines security groups for load balancers, proxies, and backend instances  |
| `ec2_instances`      | Launches EC2 instances in public (proxy) and private (backend) subnets      |
| `load_balancers`     | Creates one **public** and one **private** load balancer                    |
| `S3`                 | Creates an S3 bucket for remote state                                       |
| `DynamoDB`           | Creates a DynamoDB table for state locking                                  |

---

## 🚀 Features

- Fully **modular** infrastructure using custom-built modules
- Remote state storage in **S3** with locking using **DynamoDB**
- Uses **Terraform workspaces** (default: `dev`)
- Provisions:
  - Public & private subnets
  - Internet Gateway
  - Public and private load balancers
  - Proxy EC2s in public subnets
  - Backend EC2s in private subnets
- Uses **remote provisioners** to install software (Apache, etc.)
- Logs all public IPs to `all-ips.txt` using `local-exec`
- Dynamically fetches latest AMI with **data source**

---

## 🗂 Project Structure

terraform-aws-project/ ├── main.tf ├── variables.tf ├── outputs.tf ├── provider.tf ├── all-ips.txt (generated after apply) ├── .gitignore ├── README.md └── modules/ ├── vpc/ ├── subnets/ ├── igw/ ├── route_table/ ├── private_route_table/ ├── security_groups/ ├── ec2_instances/ ├── load_balancers/ ├── S3/ ├── DynamoDB/


---

## 🔧 Usage

### 1. Initialize the project

```bash
terraform init
terraform workspace new dev
terraform workspace select dev
terraform plan
terraform apply
```

# 👤 Author
## Mohamed Ashraf

##GitHub: @mohamedashraf56

