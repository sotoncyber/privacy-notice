all: privacy.pdf

privacy.pdf: privacy.tex
	pdflatex privacy.tex
	pdflatex privacy.tex

.PHONY: open
open: privacy.pdf
	evince privacy.pdf

.PHONY: clean
clean:
	rm -f *.pdf *.log *.aux *.toc *.out
