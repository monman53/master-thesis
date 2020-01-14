all: main.pdf

main.dvi: *.tex  reference.bib image/*
	platex --shell-escape main
	pbibtex main
	platex --shell-escape main
	platex --shell-escape main
	platex --shell-escape main

main.pdf: main.dvi
	dvipdfmx main

clean:
	rm -f main.dvi main.pdf main.aux main.log main.toc texput.log main.bbl main.blg main.out main.bcf
