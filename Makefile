all:
	pandoc --template=template.tex \
	--verbose --slide-level 2 \
	-t beamer git-101.txt \
	--highlight-style pygments \
	--latex-engine=xelatex \
	-o git-101.pdf

entr:
	ls *.txt | entr -c sh -c 'make all; killall -HUP mupdf-x11'

