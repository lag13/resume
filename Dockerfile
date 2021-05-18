FROM ubuntu:20.10

RUN apt-get update && apt-get install -y texlive-xetex

COPY Fontin* .
COPY resume.tex .

