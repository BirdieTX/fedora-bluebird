#!/usr/bin/env bash

echo "Checking for updates from bluebird..."
rpm-ostree upgrade

if rpm-ostree status --json | jq -e '.deployments[] | select(.staged == true)' > /dev/null; then
    echo "Restart this system to install updates..."
fi