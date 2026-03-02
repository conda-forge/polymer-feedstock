#!/usr/bin/env bash
set -ex

# ensure host python is found first
export PATH="$PREFIX/bin:$PATH"

meson setup builddir \
  --prefix=$PREFIX \
  --buildtype=release

meson compile -C builddir
meson install -C builddir
