#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y krusader
dnf5 install -y gwenview
dnf5 install -y okular
dnf5 remove -y fcitx5
dnf5 remove -y input-remapper
dnf5 remove -y kcharselect
dnf5 remove -y kdebugsettings
dnf5 remove -y kde-connect
dnf5 remove -y kjournald
dnf5 remove -y ksystemlog
dnf5 remove -y nvtop
dnf5 remove -y plasma-discover-notifier
dnf5 remove -y plasma-welcome
dnf5 remove -y ptyxis

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
