#!/usr/bin/env bash
set -e
LIB="charged-nook.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/oscaravelle/wrappedcollarhub/releases/download/eager-forest-clever-delta/charged-nook.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
