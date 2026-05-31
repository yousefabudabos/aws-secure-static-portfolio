# AWS Secure Static Portfolio

A secure static website hosted on AWS S3 and delivered via CloudFront with HTTPS.

## Architecture

## AWS Services Used

- **S3** — Static file storage (private)
- **CloudFront** — CDN with HTTPS and edge caching
- **Origin Access Control** — S3 accessible only via CloudFront
- **IAM** — Least privilege deployment permissions

## Security Features

- S3 Bucket is completely private
- HTTPS enforced via CloudFront
- No public S3 access — OAC only
- No credentials in code

## Deployment

```bash
./scripts/deploy.sh
```

## Cost Estimate

~$0.00/month (within AWS Free Tier)

## Live URL

https://d22yqgzgrqoao6.cloudfront.net

## Author

Yousef Abudabos — Cloud & DevOps Engineer  
GitHub: [yousefabudabos](https://github.com/yousefabudabos)
EOF
