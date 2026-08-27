#!/usr/bin/env bash

set -oue pipefail

dnf5 config-manager setopt '*.enabled=0'