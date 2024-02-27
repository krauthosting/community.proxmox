#!/usr/bin/env bash
# Copyright (c) Ansible Project
# GNU General Public License v3.0+ (see LICENSES/GPL-3.0-or-later.txt or https://www.gnu.org/licenses/gpl-3.0.txt)
# SPDX-License-Identifier: GPL-3.0-or-later

# Created with antsibull-docs 2.7.0

set -e

pushd "$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
trap "{ popd; }" EXIT

# use a tmpdir to install the collection for doc builds
# by default antsibull-docs current will try to build docs for all installed collections.
# We only want the docs for our specific one
mkdir -p tmp/collections
rm -rf tmp/*.tar.gz
export ANSIBLE_COLLECTIONS_PATH=./tmp/collections
(cd ../../ && ansible-galaxy collection build --output-path docs/docsite/tmp)
ansible-galaxy collection install --force tmp/*.tar.gz -p "$ANSIBLE_COLLECTIONS_PATH"

# Create collection documentation into temporary directory
rm -rf temp-rst
mkdir -p temp-rst
chmod og-w temp-rst  # antsibull-docs wants that directory only readable by itself
antsibull-docs \
    --config-file antsibull-docs.cfg \
    collection \
    --squash-hierarchy \
    --use-current \
    --output-format ansible-docsite \
    --dest-dir temp-rst \
    --fail-on-error \
    community.proxmox

# Build Sphinx site
sphinx-build -M html temp-rst build -c . -W --keep-going
