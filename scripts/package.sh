#!/bin/bash -i

set -e

yarn install --immutable --network-timeout 100000  \
&& yarn --cwd arduino-ide-extension build --network-timeout 100000  \
&& yarn --cwd electron-app rebuild --network-timeout 100000  \
&& yarn --cwd electron-app build --network-timeout 100000  \
&& yarn --cwd electron-app package --network-timeout 100000 
