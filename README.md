# AWS Secure Static Portfolio

A production-ready secure static website hosted on AWS S3 and delivered 
via CloudFront with HTTPS — built and deployed using Terraform/OpenTofu.

## Live Demo

🌐 https://d22yqgzgrqoao6.cloudfront.net

## Architecture

User → CloudFront (HTTPS + OAC) → S3 (Private Bucket)
See [architecture/architecture.md](architecture/architecture.md) for full details.

## Repository Structure

aws-secure-static-portfolio/
├── src/
│   └── index.html          # Portfolio website
├── terraform/
│   ├── providers.tf        # AWS provider configuration
│   ├── variables.tf        # Input variables
│   ├── main.tf             # S3 bucket resources
│   └── outputs.tf          # Output values
├── scripts/
│   └── deploy.sh           # Automated deployment script
├── architecture/
│   └── architecture.md     # Architecture diagram and decisions
└── README.md

## AWS Services Used

| Service | Purpose |
|---|---|
| S3 | Static file storage (private) |
| CloudFront | CDN with HTTPS and edge caching |
| IAM | Least privilege access control |

## Security Features

- ✅ S3 Bucket completely private
- ✅ HTTPS enforced (HTTP redirects to HTTPS)
- ✅ Origin Access Control — only CloudFront reads from S3
- ✅ No credentials in code
- ✅ Infrastructure managed as Code (Terraform)

## Deployment

### Prerequisites
- AWS CLI configured
- OpenTofu installed
- AWS account with appropriate permissions

### Deploy Infrastructure
```bash
cd terraform
tofu init
tofu plan
tofu apply
```

### Deploy Website
```bash
./scripts/deploy.sh
```

### Teardown
```bash
cd terraform
tofu destroy
```

## Cost Estimate

~$0.00/month (within AWS Free Tier)

## Author

Yousef Abudabos — Cloud & DevOps Engineer
GitHub: [yousefabudabos](https://github.com/yousefabudabos)
