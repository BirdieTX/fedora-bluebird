#!/usr/bin/env bash

set -oue pipefail

dnf5 config-manager setopt \
    copr:copr.fedorainfracloud.org:ublue-os:packages.enabled=1 \
    copr:copr.fedorainfracloud.org:ublue-os:akmods.enabled=1 \
    fedora.enabled=1 \
    fedora-cisco-openh264.enabled=1 \
    fedora-multimedia.enabled=1 \
    terra.enabled=1 \
    terra-mesa.enabled=1 \
    updates.enabled=1 \
    updates-archive.enabled=1

rm -rf /etc/profile.d/bazzite-neofetch.sh
rm -rf /usr/share/fish/vendor_conf.d/bazzite-neofetch.fish
rm -rf /usr/share/gnome-shell/extensions/bazaar-integration@kolunmi.github.io
