#!/usr/bin/env bash

set -e

curl -Lo repo https://storage.googleapis.com/git-repo-downloads/repo
chmod a+x repo
mv repo /usr/bin
