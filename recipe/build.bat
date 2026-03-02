@echo on

meson setup builddir ^
  --prefix=%PREFIX% ^
  --buildtype=release ^
  -Dpython=%PREFIX%\python.exe

meson compile -C builddir
meson install -C builddir
