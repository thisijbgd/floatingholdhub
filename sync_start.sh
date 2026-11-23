#!/usr/bin/env bash
set -e
LIB="sound-archive.a"
TAG="bright-ember-calm-badger"
REPO="thisijbgd/floatingholdhub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
