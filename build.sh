#!/bin/bash 

dnf install -y openssl-devel zlib-devel systemd-devel wget  pcre-devel
dnf groupinstall -y "Development Tools"
cd /build
make TARGET=linux-glibc USE_LTO=1 LDFLAGS="-flto=auto"
