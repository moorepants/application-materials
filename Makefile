TARGETS = cover-letter research-statement teaching-statement diversity-statement
all: pdf html
pdf:
	rst2latex --hyperref-options="citecolor=blue" --use-latex-citations --use-bibtex=plain,references research-statement.rst research-statement.tex
	for target in $(TARGETS) ; do \
		pdflatex $$target ; \
		pdflatex $$target ; \
	done
	bibtex research-statement
	pdflatex research-statement
	pdflatex research-statement
html:
	rst2html research-statement.rst research-statement.html
clean:
	rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt
	for target in $(TARGETS) ; do \
		rm -f $$target.pdf ; \
	done
	rm -f research-statement.tex research-statement.html
