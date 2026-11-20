#!/usr/bin/env bash
set -e
REPO="orlafiegld/libopticstadium"
TAG="crimson-harbor-crimson-delta"
LIB="foam-helm.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
