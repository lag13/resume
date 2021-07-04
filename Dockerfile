FROM ubuntu:20.10

# To prevent getting prompted for my geographic location when the
# "apt-get install -y texlive-xetex" command runs (which causes the
# build to hang):
# https://askubuntu.com/questions/909277/avoiding-user-interaction-with-tzdata-when-installing-certbot-in-a-docker-contai
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y texlive-xetex
# Installs the layaureo package
# https://github.com/Polpetta/WirelessNetworkNotes/issues/25 Honestly
# I don't really understand how latex packages are managed (like, in
# my head it feels like there should be some sort of latex package
# installer instead of using apt) but this worked and I primarily just
# want to make a resume and don't care much about how I make it
# happen. Maybe I'll learn latex more some other time.
RUN apt-get install texlive-lang-italian

WORKDIR /latex
