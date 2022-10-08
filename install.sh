#!/usr/bin/env bash

PREFIX="/usr/local"

sudo install -vt "$PREFIX/bin" ./bibx ./ext.sh
sudo install -vt "$PREFIX/man/man1" ./bibx.1
