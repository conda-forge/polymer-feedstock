@echo on

:: ensure host python is found first
set "PATH=%PREFIX%;%PREFIX%\Library\bin;%PATH%"

meson setup builddir ^
  --prefix=%PREFIX% ^
  --buildtype=release

meson compile -C builddir
meson install -C builddir