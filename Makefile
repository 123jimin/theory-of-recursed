pdflatex="pdflatex -interaction=nonstopmode"

all: theory-of-recursed.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex=$(pdflatex) $< > /dev/null
	latexmk -c $<

clean:
	latexmk -CA
