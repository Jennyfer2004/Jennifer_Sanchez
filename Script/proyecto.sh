#!/bin/bash

read -p "Escriba la opción deseada de las siguientes:
    run
    slides
    report
    show_report
    show_slides
    clean
    " option
case $option in
 report)
  cd "../Informe"
  latexmk -pdf informe.tex 
  ;;

 slides)
  cd "../Presentación"
  latexmk -pdf presentacion.tex
  ;;

 clean)
  cd "../Informe"
  rm informe.aux
  rm *.log
  rm *.toc
  rm *.out
  rm *.synctex.gz
  rm *.fdb_latexmk
  rm *.fls
  rm *.nav
  rm *.snm 
   cd "../Presentación"
  rm informe.aux
  rm *.log
  rm *.toc
  rm *.out
  rm *.synctex.gz
  rm *.fdb_latexmk
  rm *.fls
  rm *.nav
  rm *.snm 
  ;;

 run)
  cd ".."
  jupyter nbconvert --execute jennifer_sanchez.ipybn
  ;;
 show_slides)
  xpdf presentacion.pdf 
  ;;
 show_report)
  xpdf informe.pdf 
  ;;
esac   