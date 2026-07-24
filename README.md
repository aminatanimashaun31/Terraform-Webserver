# Terraform Webserver

## Project Overview

This project is my submission for **Week 1 of the HUG Lagos/Ibadan Terraform Challenge**.

The objective was to provision a basic web server on AWS using Terraform while applying Infrastructure as Code (IaC) principles.

The infrastructure provisions a custom VPC, public subnet, internet gateway, route table, security group, and an EC2 instance. During deployment, the EC2 instance automatically installs Nginx using a `user_data` script and serves a simple HTML page displaying my name and **"HUG Lagos/Ibadan Terraform Challenge."**

---

## Architecture

The infrastructure consists of:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group (SSH & HTTP)
- EC2 Instance
- Nginx Web Server

---

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- Nginx
- Bash (user_data)

---

## Project Structure

```text
.
├── main.tf
├── outputs.tf
├── userdata.sh
├── README.md
├── .gitignore
└── .terraform.lock.hcl
```

---

## Resources Provisioned

Terraform provisions:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
  - SSH (22)
  - HTTP (80)
- EC2 Instance
- Nginx Web Server

---

## Prerequisites

- AWS Account
- Terraform installed
- AWS CLI installed
- Git installed

Configure your AWS credentials:

```bash
aws configure
```

---

## Deployment

Clone the repository:

```bash
git clone https://github.com/aminatanimashaun31/Terraform-Webserver.git
```

Navigate into the project:

```bash
cd Terraform-Webserver
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Review the execution plan:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

Type `yes` when prompted.

---

## Outputs

After deployment Terraform displays:

- EC2 Public IP Address
- Website URL

Example:

```text
public_ip = "54.xxx.xxx.xxx"

website = "http://54.xxx.xxx.xxx"
```

---

## Screenshots

### EC2 Instance Running

![EC2 Instance](images/aws-instance.png)

### Nginx Web Server

![Nginx Web Server](images/webpage-screenshot.png)

### VScode Terminal

![VScode](images/vscode.png)

---

## Clean Up

To avoid unnecessary AWS charges:

```bash
terraform destroy
```

Type `yes` when prompted.

---

## Author

**Aminat Animashaun**

GitHub: https://github.com/aminatanimashaun31
