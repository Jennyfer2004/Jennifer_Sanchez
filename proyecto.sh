#!/bin/bash

latexmk -pdf informe.tex
latexmk -pdf presentacion.tex





folder="./"
rm "$folder"/*.aux
rm "$folder"/*.log
rm "$folder"/*.toc
rm "$folder"/*.out
rm "$folder"/*.synctex.gz
rm "$folder"/*.fdb_latexmk
rm "$folder"/*.fls
rm "$folder"/*.nav
rm "$folder"/*.snm


jupyter nbconvert --execute jennifer_sanchez.ipybn

xpdf presentacion.pdf
xpdf informe.pdf