FROM centos:7

RUN yum update -y

RUN yum -y install openssl openssl-devel curl git vim sudo python

RUN useradd -m -s /bin/bash dev
RUN echo 'dev ALL=(ALL:ALL) NOPASSWD:ALL' | tee /etc/sudoers.d/dev

WORKDIR /home/dev
ENV HOME /home/dev
USER dev

RUN git clone https://github.com/keithseahus/dotfiles.git ~/.dotfiles \
    && cd ~/.dotfiles \
    && python ./set_symlinks_to_dotfiles.py
