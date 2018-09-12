all: pdf html
pdf:
	rst2latex --use-latex-citations research-statement.rst research-statement.tex
	pdflatex research-statement.tex
	pdflatex research-statement.tex
	pdflatex cover-letter.tex
html:
	rst2html research-statement.rst research-statement.html
clean:
	rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt
	rm -f research-statement.tex research-statement.pdf research-statement.html
