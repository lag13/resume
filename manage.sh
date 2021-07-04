#!/usr/bin/env bash

img_name=compileresume
docker build -t $img_name .
docker run  -it --mount "type=bind,source=$(pwd),target=/latex" $img_name xelatex resume.tex
