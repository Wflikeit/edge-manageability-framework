#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2025 Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0

set -o errexit

# Change directories to the path where artifacts are installed
cd /tmp/onprem-ke-installer

export KUBECONFIG=/home/$USER/.kube/config

# Add /usr/local/bin to the PATH as some utilities, like kubectl, could be installed there
export PATH=$PATH:/usr/local/bin

# Execute the installer with the current directory as context and upgrade flag
/usr/bin/onprem-ke-installer -upgrade

# Clean up artifacts directory
rm -rf /tmp/onprem-ke-installer
