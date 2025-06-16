#!/bin/bash
mkdir -p outputs

for file in versions/*.tex; do
    filename=$(basename "$file" .tex)
    pdflatex -output-directory=outputs "$file"
    mv "outputs/${filename}.pdf" "outputs/${filename}.pdf" 2>/dev/null
done
