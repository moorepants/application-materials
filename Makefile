all: pdf
pdf:
	rst2latex --use-latex-citations research-statement.rst research-statement.tex
	pdflatex research-statement.tex
	pdflatex research-statement.tex
html:
	rst2html research-statement.rst research-statement.html
