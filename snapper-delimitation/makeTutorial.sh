cd tutorial
pdflatex snapper-delimitation-tutorial.tex
bibtex snapper-delimitation-tutorial.aux
pdflatex snapper-delimitation-tutorial.tex
pdflatex snapper-delimitation-tutorial.tex
cd ..
jar fc snapper-delimitation-tutorial.zip tutorial/snapper-delimitation-tutorial.pdf xml/*.xml data/*



