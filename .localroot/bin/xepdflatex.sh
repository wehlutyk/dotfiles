#!/bin/bash
# Determine whether a .tex file should be processed
# with xelatex or pdflatex

file="$1"
if head -n 5 "$file" | grep -i -q 'xelatex' ; then
    xelatex --interaction=nonstopmode --synctex=1 "$file"
else
    pdflatex --interaction=nonstopmode --synctex=1 "$file"
fi
