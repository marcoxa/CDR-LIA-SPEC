# -*- Mode: Makefile -*-

# Makefile for CL-LIA spec.
# Works on UN*X setups.

# RM
# Change to 'del' to use nmake on a VS CMD or PS with MikTeX in the PATH.

RM = rm

LATEX = pdflatex

DOC = CDR-IEEE-754-support.tex

all: $(DOC)
	$(LATEX) $(DOC)
	bibtex $(DOC:.tex=)
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)
	makeindex $(DOC)
	$(LATEX) $(DOC)

# No cleaning up of 'sections' subfolders.
clean:
	$(RM) *.dvi *.pdf *.log *.aux *.blg *.bbl *.idx *.ind *.ilg *.toc


# end of file -- Makefile

