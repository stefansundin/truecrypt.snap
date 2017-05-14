#!/bin/bash -ex
DIR=$(dirname "$(readlink -f "$0")")
find $DIR/patches -name '*.patch' | sort | while read f; do
  patch -p1 < "$f"
done
