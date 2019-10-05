TARGETS = cover-letter research-statement teaching-statement
RESUMELOC := "/home/moorepants/Documents/resume"
POSITION = generic
all: pdf html
pdf:
	for target in $(TARGETS) ; do \
		pdflatex $$target ; \
		pdflatex $$target ; \
	done
	bibtex research-statement
	pdflatex research-statement
	pdflatex research-statement
	pdftk cover-letter.pdf $(RESUMELOC)/resume.pdf research-statement.pdf teaching-statement.pdf cat output jkm-$(POSITION)-submission.pdf
clean:
	rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt *.out
	for target in $(TARGETS) ; do \
		rm -f $$target.pdf ; \
	done
