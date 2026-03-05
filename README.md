# 🚀 Static Website Deployment using Terraform, Jenkins & AWS EC2

## 📌 Project Overview

This project demonstrates end-to-end DevOps automation where:

- AWS VPC and EC2 are provisioned using **Terraform**
- A static website (HTML & CSS) is deployed using **Jenkins CI/CD**
- Deployment is automated using **GitHub Webhook**
- Website is served using **Nginx**

This project showcases Infrastructure as Code (IaC) + Continuous Deployment in a real-world scenario.

---

## 🏗️ Infrastructure Provisioning (Terraform)

The following AWS resources are created using Terraform:

- Custom VPC
- Public Subnet
- Security Group (Allow SSH & HTTP)
- EC2 Instance (Amazon Linux)

### Terraform Commands Used

```
terraform init
terraform plan
terraform apply
terraform destroy
```
---

---
## 🔄 CI/CD Workflow

Developer → GitHub Push → Webhook Trigger → Jenkins → EC2 → Nginx → Live Website
```

### Workflow Explanation:

1. Developer pushes code to GitHub
2. GitHub Webhook triggers Jenkins automatically
3. Jenkins pulls latest code from repository
4. Jenkins connects to EC2 via SSH
5. Old website files are removed
6. New HTML & CSS files are copied to `/usr/share/nginx/html`
7. Nginx service is restarted
8. Updated website becomes live

---

## 🛠️ Tech Stack
---
### 🌍 Infrastructure
- Terraform
- AWS VPC
- AWS EC2 (Amazon Linux)

### ⚙️ CI/CD
- Jenkins (Declarative Pipeline)
- GitHub Webhook
- SSH

### 🌐 Web Technologies
- HTML
- CSS
- Nginx

---

## ⚙️ Jenkins Pipeline Stages
---
### 1️⃣ Pull Latest Code
Clones the `main` branch from GitHub.

### 2️⃣ Deploy to EC2
- SSH into EC2
- Remove old files
- Clone latest repository
- Copy files to Nginx directory
- Set correct ownership & permissions
- Restart Nginx service

---

## 🌐 Access Website
---
After successful deployment:

```
http://<EC2-Public-IP>
```

---

## 🔐 Security Configuration

- Port 22 (SSH) enabled
- Port 80 (HTTP) enabled
- Proper Nginx file permissions configured

---

## 🎯 Key Learning Outcomes
---
- Infrastructure as Code using Terraform
- Custom VPC creation
- EC2 provisioning
- Jenkins CI/CD automation
- GitHub Webhook integration
- Automated Static Website Deployment
- Real-world DevOps implementation

---

## 👩‍💻 Author

**Ankita Pansare**    

