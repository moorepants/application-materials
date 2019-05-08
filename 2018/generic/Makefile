TARGETS = cover-letter research-statement teaching-statement
RESUMELOC := "/home/moorepants/Documents/resume"
POSITION = generic
CANDSTATE := "/home/moorepants/Jobs/ucd-lpsoe/merit-review/candidate-statement-2018.pdf"
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
	pdftk cover-letter.pdf $(RESUMELOC)/resume.pdf research-statement.pdf teaching-statement.pdf $(CANDSTATE) cat output jkm-$(POSITION)-submission.pdf
html:
	rst2html research-statement.rst research-statement.html
clean:
	rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt *.out
	for target in $(TARGETS) ; do \
		rm -f $$target.pdf ; \
	done
	rm -f research-statement.tex research-statement.html
