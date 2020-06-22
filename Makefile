cgmcintyre.pdf:
	xelatex cgmcintyre.tex

.PHONY: preview
preview:
	firefox cgmcintyre.pdf

## Install required texlive packages
.PHONY: dependencies
dependencies:
	tlmgr install \
	    enumitem \
	    environ \
	    fontawesome \
	    ifmtarg \
	    sourcesanspro \
	    sourcesanspro \
	    tcolorbox \
	    trimspaces \
	    xifthen

## Remove build artifacts
.PHONY: clean
clean:
	git clean -fx
	rm -f *.pdf
