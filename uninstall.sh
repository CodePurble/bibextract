#!/usr/bin/env bash

PREFIX="${1:-/usr/local}"

sudo rm "$PREFIX/bin/bibx" "$PREFIX/bin/ext.sh"  "$PREFIX/man/man1/bibx.1"
