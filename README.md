# IOTBTech Guided Projects

**Program:** IOTB TECH Fellowship, Cloud and DevOps Stack (2026)
**Author:** Lawal Ibrahim Akorede (HIGHBEE)

## About This Repository

This repository holds my work on the IOTB TECH guided capstone for the Cloud and DevOps stack. The capstone is one connected project built in three phases. Each phase builds directly on the one before it, and by the end, a code push to GitHub automatically builds, ships, and deploys an application to AWS.

```
Terraform creates the servers
        |
Ansible configures the servers
        |
Docker packages the application
        |
Amazon ECR stores the image
        |
GitHub Actions builds, pushes, and deploys it to EC2
```

## Projects

| Phase | Project | Tools | Status | Folder |
|---|---|---|---|---|
| 1 | Provision AWS Infrastructure with Terraform and Ansible | Terraform, Ansible, AWS (VPC, EC2), Docker | In progress | [phase-1-terraform-ansible](./phase-1-terraform-ansible/) |
| 2 | Application Containerization and Amazon ECR Deployment | Docker, Amazon ECR, AWS CLI | Not started | [phase-2-docker-ecr](./phase-2-docker-ecr/) |
| 3 | CI/CD Pipeline for Automated AWS Application Deployment | GitHub Actions, ECR, EC2, GitHub Secrets | Not started | [phase-3-github-actions-cicd](./phase-3-github-actions-cicd/) |

## Phase Summaries

### Phase 1: Terraform and Ansible

Terraform provisions a VPC, a public subnet, an Internet Gateway, a route table, two security groups, and two EC2 instances, a **control node** and a **managed node**. Ansible runs from the control node, connects to the managed node over SSH, updates it, installs Docker, starts the Docker service, and verifies it with a test container.

Key ideas: infrastructure as code, configuration management, least-privilege network access (the managed node accepts SSH only from the control node).

### Phase 2: Containerization and Amazon ECR

The provided application is analyzed (dependencies, required port, start command), packaged with a Dockerfile and `.dockerignore`, built and tested locally, then tagged and pushed to a private Amazon ECR repository.

Key ideas: container images, image tagging, registry authentication.

### Phase 3: CI/CD with GitHub Actions

A GitHub Actions workflow triggers on every push to the deployment branch. It checks out the code, builds the Docker image, authenticates with AWS using GitHub Secrets, pushes the image to ECR, connects to the EC2 server, pulls the new image, and replaces the old container.

Key ideas: automated pipelines, secrets management, zero manual deployment.

## Repository Structure

```
IOTBTech_Guided_Projects/
├── README.md
├── .gitignore
├── phase-1-terraform-ansible/
│   ├── README.md
│   ├── terraform/
│   ├── Ansible/
│   └── evidence/
├── phase-2-docker-ecr/
│   ├── README.md
│   ├── Dockerfile
│   ├── .dockerignore
│   └── evidence/
└── phase-3-github-actions-cicd/
    ├── README.md
    ├── .github/workflows/
    └── evidence/
```

Each phase folder has its own README with the architecture, how to run it, the evidence, and the problems I hit along the way.

## Skills Demonstrated

- Infrastructure as code with Terraform (variables, data sources, outputs, resource dependencies)
- Configuration management with Ansible (inventory, playbooks, idempotent tasks)
- AWS networking and compute (VPC, subnets, route tables, security groups, EC2)
- Containerization with Docker (Dockerfile, image builds, local testing)
- Container registry workflow with Amazon ECR
- CI/CD pipeline design with GitHub Actions
- Secure handling of credentials with GitHub Secrets
- Linux command line, SSH, and shell fundamentals

## Security Practices

- No private keys, passwords, access keys, or real IP addresses are committed to this repository.
- `.gitignore` excludes `*.pem`, `terraform.tfvars`, `*.tfstate`, `*.tfstate.backup`, and the `.terraform/` directory.
- Pipeline credentials live in GitHub Secrets, never in the code.
- Infrastructure is stopped or destroyed when not in use to avoid unnecessary cost.

## Tools Used

Terraform, Ansible, AWS (VPC, EC2, ECR, IAM), Docker, GitHub Actions, Ubuntu 22.04, WSL Ubuntu, Git and GitHub

## About Me

I am **Lawal Ibrahim (HIGHBEE)**, a Food Engineering student and self-taught developer, building toward a career in Cloud and DevOps engineering as part of the IOTB TECH Fellowship.

- GitHub: https://github.com/brymo140
- LinkedIn: linkedin.com/in/lawal-ibrahim-3a6804271
