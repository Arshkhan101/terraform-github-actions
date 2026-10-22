# 🚀 Automated AWS Infrastructure Deployment & Cleanup using Terraform & GitHub Actions

<p align="center">
  <img src="https://img.shields.io/badge/Cloud-AWS-orange?style=for-the-badge&logo=amazonaws&logoColor=white">
  <img src="https://img.shields.io/badge/IaC-Terraform-purple?style=for-the-badge&logo=terraform&logoColor=white">
  <img src="https://img.shields.io/badge/CI%2FCD-GitHub_Actions-blue?style=for-the-badge&logo=githubactions&logoColor=white">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">
</p>

---

## 📑 Table of Contents
- [📖 Project Overview & Architecture](#-project-overview--architecture)
- [🛠️ Tech Stack & Components](#️-tech-stack--components)
- [📂 Project Directory Structure](#-project-directory-structure)
- [⚙️ Configuration Files Code](#️-configuration-files-code)
- [🚀 Step-by-Step Setup Guide](#-step-by-step-setup-guide)
- [💡 Key Learnings & Skills Demonstrated](#-key-learnings--skills-demonstrated)

---

## 📖 Project Overview & Architecture

### Project Overview
Managing cloud infrastructure manually through the web console often leads to configuration errors, security gaps, and untracked changes. This project establishes an automated CI/CD pipeline for provisioning and cleaning up cloud infrastructure safely. By writing infrastructure as code, any updates made to the codebase are automatically validated, planned, deployed, and systematically torn down on AWS without manual intervention through the web portal, ensuring cost-efficiency and a clean environment.

### Architecture Flow
The workflow operates through a structured, automated pipeline:
1. **Developer Workstation:** The engineer writes or modifies the infrastructure configuration files (`main.tf`) locally.
2. **GitHub Version Control:** Code is committed and pushed to the GitHub repository, triggering the automation workflow.
3. **GitHub Actions Runner:** A clean virtual machine environment spins up, sets up Terraform, and authenticates securely with AWS using encrypted secrets.
4. **Validation & Planning:** The pipeline runs initialization, syntax checks (`terraform validate`), and execution planning (`terraform plan`).
5. **Automated AWS Provisioning & Cleanup:** Upon pushing to the `main` branch, Terraform first applies the changes to provision resources (Security Group & EC2 Instance), and then immediately executes an automated cleanup (`terraform destroy`) to safely tear down the infrastructure.

---

## 🛠️ Tech Stack & Components

* ☁️ **Cloud Provider:** **Amazon Web Services (AWS)** — Used as the target cloud environment to host and run infrastructure resources.
* ⚙️ **Infrastructure as Code (IaC):** **HashiCorp Terraform** — Used to define, provision, version-control, and destroy cloud resources declaratively.
* 🔄 **CI/CD Automation Server:** **GitHub Actions** — Orchestrates the automated pipeline workflows (init, validate, plan, apply, and destroy) on every code push.
* 📂 **Version Control System:** **Git & GitHub** — Manages source code history, collaboration, and repository hosting.

---

## 📂 Project Directory Structure

```text
terraform-github-actions-demo/
│
├── .github/
│   └── workflows/
│       └── terraform-ci-cd.yml   # GitHub Actions CI/CD automation & cleanup workflow
│
├── main.tf                       # Terraform configuration for AWS resources
└── README.md                     # Project documentation