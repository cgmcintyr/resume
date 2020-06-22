cgmcintyre.pdf:
	xelatex cgmcintyre.tex

## Install required texlive packages
.PHONY: dependencies
dependencies:
	tlmgr install \
	    enumitem \
	    xifthen \
	    ifmtarg \
	    fontawesome \
	    sourcesanspro \
	    sourcesanspro \
	    tcolorbox \
	    environ \
	    trimspaces

## Remove build artifacts
.PHONY: clean
clean:
	git clean -fx
	rm -f *.pdf
