#! /bin/bash

mkdir -p build
docker build -t ovmf-vbios-patch docker-build
docker run --rm -v "$PWD/build:/build" -v "$PWD/roms:/roms" ovmf-vbios-patch /ovmf/compile-ovmf.sh 
LenovoP51.QuadroM2200.4096.84067d0003.rom
tar -czf build/ovmf-vbios-patched.tgz build/OVMF*
