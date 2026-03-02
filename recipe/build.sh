#!/usr/bin/env bash
set -ex

# ensure host python is found first
export PATH="$PREFIX/bin:$PATH"

meson setup builddir $MESON_ARGS
meson compile -C builddir
meson install -C builddir
