#!/bin/sh
docker run \
  --rm \
  -v "$(pwd):/curriculum" \
  -w '/curriculum' \
  tianon/latex \
    pdflatex -jobname 'documents/CV_Colin_Hebert_en' "\def\languageArgument{english} \input{CV_Colin_Hebert.tex}"

docker run \
  --rm \
  -v "$(pwd):/curriculum" \
  -w '/curriculum' \
  tianon/latex \
    pdflatex -jobname 'documents/CV_Colin_Hebert_fr' "\def\languageArgument{french} \input{CV_Colin_Hebert.tex}"
