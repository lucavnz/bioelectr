#!/bin/bash
set -e
cd "$(dirname "$0")"
pdflatex -interaction=nonstopmode main.tex
biber main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
echo "Compilazione completata con successo: main.pdf"
