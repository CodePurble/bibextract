#!/usr/bin/env bash

set -eo pipefail

grep -Eo '\\cite{.*}' $1 | sed -E 's/\\cite\{(.*)\}/\1/g'
