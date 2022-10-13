#!/usr/bin/env bash

PREFIX="${1:-/usr/local}"

mkdir -p $PREFIX/bin
mkdir -p $PREFIX/man/man1

sudo install -vt "$PREFIX/bin" ./bibx ./ext.sh
sudo install -vt "$PREFIX/man/man1" ./bibx.1
