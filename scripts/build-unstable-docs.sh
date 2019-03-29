#!/bin/bash
# SPDX-License-Identifier: Apache-2.0

set -ex

sudo apt-get update
sudo apt-get install -yq python3-sphinx python3-pip

python3 --version

pip3 install -r docs/requirements.txt

sphinx-build -b html docs/source gh-pages

cd gh-pages
touch .nojekyll

git init
git config user.name "${GH_USER_NAME}"
git config user.email "${GH_USER_EMAIL}"

git add .
git commit -m "Deploy to GitHub Pages"

set +x

git push --force --quiet "https://${GH_API_KEY_PSW}@${GH_URL}" master:gh-pages
