# Architecture: AWS Secure Static Portfolio

## Diagram

┌─────────────┐     HTTPS      ┌──────────────────┐     Private    ┌─────────────┐
│    User     │ ─────────────► │   CloudFront CDN  │ ─────────────► │  S3 Bucket  │
│  (Browser)  │                │  d22yqgzgrqoao6   │      OAC       │  (Private)  │
└─────────────┘                └──────────────────┘                └─────────────┘
│
│ Edge Locations
│ (Global CDN)
┌────┴────┐
│  HTTPS  │
│  cert   │
└─────────┘

## Security Decisions

| Decision | Reason |
|---|---|
| S3 Bucket is private | Prevent direct access, force traffic through CloudFront |
| Origin Access Control | Only CloudFront can read from S3 |
| HTTPS enforced | Redirect HTTP to HTTPS at CloudFront level |
| No credentials in code | IAM Role and AWS CLI profiles used |

## Cost Estimate

| Service | Usage | Cost |
|---|---|---|
| S3 | < 1MB storage | ~$0.00 |
| CloudFront | < 1TB/month | ~$0.00 |
| **Total** | | **~$0.00/month** |
