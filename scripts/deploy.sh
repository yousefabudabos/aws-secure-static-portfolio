#!/bin/bash

# Configuration
BUCKET_NAME="yousef-portfolio-2026-778477255628-eu-north-1-an"
REGION="eu-north-1"
CLOUDFRONT_ID="E19LCMANGAU2P1"

echo "==============================="
echo "  Deploying to AWS S3"
echo "==============================="

# Upload files
echo "Uploading files to S3..."
aws s3 sync src/ s3://$BUCKET_NAME/ --region $REGION

# Invalidate CloudFront cache
echo "Invalidating CloudFront cache..."
aws cloudfront create-invalidation \
    --distribution-id $CLOUDFRONT_ID \
    --paths "/*"

echo "==============================="
echo "  Deployment complete!"
echo "  URL: https://d22yqgzgrqoao6.cloudfront.net"
echo "==============================="
