#!/usr/bin/env bash
set -e
TAG="clever-canyon-frosty-canyon"
LIB="island-alcove.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/gabrielennep/nuttyhangarhub/releases/download/${TAG}/${LIB}"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
