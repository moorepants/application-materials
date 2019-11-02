TARGETS = cover-letter research-statement teaching-statement diversity-statement character-references
RESUMELOC := "/home/moorepants/Documents/resume"
POSITION = utaustin
all: pdf
pdf:
	for target in $(TARGETS) ; do \
		pdflatex $$target ; \
		pdflatex $$target ; \
	done
	bibtex research-statement
	pdflatex research-statement
	pdflatex research-statement
	pdftk cover-letter.pdf $(RESUMELOC)/resume.pdf research-statement.pdf teaching-statement.pdf diversity-statement.pdf cat output jkm-$(POSITION)-submission.pdf
	pdftk moore2011.pdf moore2015.pdf cat output jkm-two-papers.pdf
clean:
	rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt *.out
	for target in $(TARGETS) ; do \
		rm -f $$target.pdf ; \
	done
