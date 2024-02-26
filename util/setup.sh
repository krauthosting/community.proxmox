#!/usr/bin/env bash

# Copyright (c) Ansible Project
# GNU General Public License v3.0+ (see LICENSES/GPL-3.0-or-later.txt or https://www.gnu.org/licenses/gpl-3.0.txt)
# SPDX-License-Identifier: GPL-3.0-or-later

set -eu
set -e pipefail

echo "Creating virtualenv in .venv..."
python3 -m venv .venv

echo "Activating venv..."
source .venv/bin/activate

echo "Installing collection requirements..."
python3 -m pip install --upgrade pip --quiet # safe as we are using a virtualenv
python3 -m pip install --quiet -r requirements.txt --upgrade

echo "Done! Please activate your virtualenv with: '. .venv/bin/activate'"
