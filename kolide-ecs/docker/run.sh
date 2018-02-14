#!/usr/bin/env sh

aws acm get-certificate --region us-east-1 --certificate-arn $KOLIDE_CERTIFICATE_ARN | jq -r .CertificateChain > /certs/kolide.crt
aws ssm get-parameters --region us-east-1 --names $KOLIDE_SSL_PRIVKEY_SSM_PARAM --with-decryption | jq -r .Parameters[0].Value | base64 -d > /certs/kolide.key
fleet prepare db
fleet serve
