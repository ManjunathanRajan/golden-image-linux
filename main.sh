#!/bin/bash
set -euo pipefail

# download and install packer
echo "- Installing packer"
yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
yum -y install packer

# run packer
echo "- Running packer"
/usr/bin/packer build -var "ami_tag=${NEW_TAG}" packer.json
