all: main.pdf

main.dvi: *.tex
	platex main
	pbibtex main
	platex main

main.pdf: main.dvi
	dvipdfmx main

clean:
	rm -f main.dvi main.pdf main.aux main.log main.toc texput.log main.bbl main.blg main.out
