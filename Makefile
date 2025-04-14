
.PHONY: default
default: main.pdf

main.pdf: main.tex refs.bib # sections/* notation.sty figures/*
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

.PHONY: clean
clean:
	@rm -f *.{aux,out,log,bbl,blg}
	rm -f *.aux
	rm -f *.out
	rm -f *.log
	rm -f *.blg
	rm -f *.pdf
	rm -f *.synctex.gz
	rm -f *.fls
	rm -f *.fdb_latexmk