TARGETS = cover-letter teaching-statement research-statement references
RESUMELOC := "/home/moorepants/Documents/resume"
all: pdf html
pdf:
	rst2latex --hyperref-options="citecolor=blue" \
		--use-latex-citations \
		--use-bibtex=plain,references \
		--documentoptions="letter" \
		--latex-preamble="\usepackage[margin=1in]{geometry}" \
		research-statement.rst research-statement.tex
	for target in $(TARGETS) ; do \
		pdflatex $$target ; \
		pdflatex $$target ; \
	done
	bibtex research-statement
	pdflatex research-statement
	pdflatex research-statement
	pdftk cover-letter.pdf $(RESUMELOC)/resume.pdf teaching-statement.pdf research-statement.pdf references.pdf cat output jkm-guelph-submission.pdf
html:
	rst2html research-statement.rst research-statement.html
clean:
	rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt *.out
	for target in $(TARGETS) ; do \
		rm -f $$target.pdf ; \
	done
	rm -f research-statement.tex research-statement.html
