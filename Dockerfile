FROM rockylinux:9

RUN dnf install -y openssl-devel zlib-devel systemd-devel wget  pcre-devel
RUN dnf groupinstall -y "Development Tools"
RUN make TARGET=linux-glibc USE_LTO=1 LDFLAGS="-flto=auto"
