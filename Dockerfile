FROM ubuntu:precise
RUN apt-get update && apt-get install -y wget git vim build-essential sudo
RUN useradd --create-home --password zozo --shell /bin/bash zozo && usermod -a -G sudo zozo && echo 'zozo:zozo' | chpasswd
ADD . /home/zozo/onie
RUN chown -R zozo:zozo /home/zozo/onie
USER zozo
WORKDIR /home/zozo
CMD export PATH=$PATH:/sbin:/usr/sbin && cd onie/build-config && echo 'zozo'|make debian-prepare-build-host && git config --global user.email "zozo@worldcompany.com" && git config --global user.name "Zozo" &&  make -j4 MACHINEROOT=../machine/dell MACHINE=dell_s3000_c2338 all && mkdir -p /home/zozo/output && cp ../build/images/* /home/zozo/output
