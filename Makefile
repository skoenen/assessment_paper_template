.PHONY: pdf all clean

all: pdf

BBL=$(wildcard *.bbl)

TEX=$(wildcard content/*.tex)
BIB=$(wildcard content/*.bib)

prepare: prepare-tex prepare-bib prepare-make

prepare-tex: $(TEX)
	cp content/*.tex ..

prepare-bib: $(BIB)
	cp content/*.bib ..

prepare-make:
	cp Makefile ..

pdf: main.pdf

main.pdf: main.tex
	pdflatex main
	bibtex main
	makeindex -s main.ist -t main.alg -o main.acr main.acn
	makeindex -s main.ist -t main.glg -o main.gls main.glo
	makeglossaries main
	pdflatex main
	pdflatex main
	#latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" main.tex > /dev/null

%.tex:
	cp template/$@.

clean: clean-tex clean-bib

clean-tex:
	latexmk -CA

clean-bib: $(BBL)
	$(RM) $<

open: main.pdf
	xdg-open main.pdf
