FROM debian:bullseye-slim
EXPOSE 22

USER root
RUN apt update -y
RUN apt full-upgrade -y
RUN apt install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
    bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
    git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev \
    libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz \
    mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pyelftools \
    libpython3-dev qemu-utils rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip \
    vim wget xmlto xxd zlib1g-dev python3-setuptools bash bash-completion openssh-server
RUN apt autopurge -y && apt autoclean -y && apt clean -y
RUN useradd -m -d /home/builder -s /bin/bash -p '$y$j9T$.267sq3m4tDGNB0nEKF660$ZAPBqnDqjHaz/PUDWKsyg1fkbvi4GhQg3pTuoT6iBC5' -U builder
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /run/sshd
CMD ["/usr/sbin/sshd", "-D"]
