#!/bin/bash
clear
ARGUMENT="$1"
#determine aux name by stripping .tex suffix and adding .aux
AUXNAME="${ARGUMENT%.tex}.aux"
pdflatex -shell-escape -interaction=nonstopmode -file-line-error "$ARGUMENT" | grep -i ".*:[0-9]*:.*\|warning" 
bibtex -terse "$AUXNAME"  
pdflatex -shell-escape -interaction=nonstopmode -file-line-error "$ARGUMENT" | grep -i ".*:[0-9]*:.*\|warning" 
pdflatex -shell-escape -interaction=nonstopmode -file-line-error "$ARGUMENT" | grep -i ".*:[0-9]*:.*\|warning"

#pdflatex thesis_rfuenzalidac
#bibtex thesis_rfuenzalidac
#pdflatex thesis_rfuenzalidac
#pdflatex thesis_rfuenzalidac
