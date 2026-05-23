# EduArn Backstage + Terraform Demo

EduArn.com Retail and Corporate Training

This project demonstrates how to use Backstage as a Developer Portal to automate infrastructure provisioning using Terraform and GitHub.

It is designed for training sessions where freshers learn:
- Backstage templates
- Scaffolder workflows
- Terraform basics
- GitHub automation
- Infrastructure as Code (IaC)

---

# What This Project Does

This setup allows a developer to:

- Fill a simple form in Backstage
- Automatically generate Terraform code
- Create a GitHub repository
- Register the service in Backstage Catalog

---

# High-Level Architecture

```text
Developer
   ↓
Backstage Template (UI Form)
   ↓
Scaffolder Engine
   ↓
Terraform Code Generation
   ↓
GitHub Repository Creation
   ↓
Catalog Registration



What Freshers Learn
What Backstage is
How templates work
How input becomes variables
How scaffolder automates workflows
How Terraform provisions infrastructure
How GitHub automation works
End-to-end DevOps flow
Project Structure
backstage/
├── app-config.yaml
├── templates/
│   └── aws-s3-template/
│       ├── template.yaml
│       └── skeleton/
│           ├── provider.tf
│           ├── main.tf
│           └── catalog-info.yaml
File Descriptions
app-config.yaml

This file configures Backstage system settings.

It is used for:

GitHub integration
Template registration
Catalog configuration
templates/aws-s3-template/template.yaml

This is the main Backstage template file.

It defines:

User input form (parameters)
Execution steps (scaffolder workflow)
GitHub repository creation
Catalog registration

When a user opens "Create" in Backstage, this file generates the UI form automatically.

templates/aws-s3-template/skeleton/provider.tf

Terraform provider configuration.

Defines AWS as the cloud provider and region dynamically based on user input.

templates/aws-s3-template/skeleton/main.tf

Defines AWS infrastructure.

In this demo:

Creates an S3 bucket
Uses project name from user input
Demonstrates Infrastructure as Code
templates/aws-s3-template/skeleton/catalog-info.yaml

Registers generated infrastructure into Backstage Catalog.

This helps track:

Ownership
Lifecycle
Infrastructure components
How It Works (Step by Step)
Developer opens Backstage UI
Selects AWS S3 Template
Enters:
Project Name
AWS Region
Backstage executes template
Terraform files are generated
GitHub repository is created automatically
Code is pushed to repository
Component is registered in Backstage Catalog
Example Input
Project Name: payment-service
AWS Region: us-east-1
Example Output

GitHub Repository:

payment-service-infra

Terraform Generated:

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "payment-service-demo-bucket"
}
Business Value (EduArn Training Focus)

This demo helps learners understand:

Real-world platform engineering
Developer self-service portals
Infrastructure automation
Standardized cloud provisioning
DevOps automation pipelines
Use in Corporate Training

This module is used in EduArn corporate training programs to teach:

Platform Engineering fundamentals
Internal Developer Platforms (IDP)
Terraform automation workflows
GitOps principles
Backstage adoption in enterprises
Outcome

After completing this demo, learners can build:

Custom Backstage templates
Infrastructure automation pipelines
Terraform-based provisioning systems
Developer self-service platforms
EduArn.com

Retail and Corporate Training Programs:

DevOps Engineering
Platform Engineering
Cloud Automation
Backstage Developer Portals
