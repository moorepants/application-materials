TARGETS = cover-letter research-statement teaching-statement character-references paper-intro
RESUMELOC := "/home/moorepants/Documents/resume"
POSITION = tudelft
all: pdf
pdf:
	for target in $(TARGETS) ; do \
		pdflatex $$target ; \
		pdflatex $$target ; \
	done
	bibtex research-statement
	pdflatex research-statement
	pdflatex research-statement
	bibtex paper-intro
	pdflatex paper-intro
	pdflatex paper-intro
	pdftk cover-letter.pdf research-statement.pdf teaching-statement.pdf character-references.pdf $(RESUMELOC)/resume.pdf paper-intro.pdf moore2011.pdf moore2015.pdf cloud2019.pdf cat output jkm-$(POSITION)-submission.pdf
clean:
	rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt *.out
	for target in $(TARGETS) ; do \
		rm -f $$target.pdf ; \
	done
