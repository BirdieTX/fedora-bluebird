#!/usr/bin/env bash

set -oue pipefail

 dnf5 config-manager setopt \
    copr:copr.fedorainfracloud.org:ublue-os:akmods.priority=108 \
    copr:copr.fedorainfracloud.org:ublue-os:akmods.name='Nvidia Drivers'
