.PHONY: dirs open clean clear

MAIN = main.tex
OUTDIR = build
CHAPTER_DIR = chapter
CHAPTERS = $(wildcard $(CHAPTER_DIR)/*.tex)
PAGE_DIR = page
PAGES = $(wildcard $(PAGE_DIR)/*.tex)
STATIC_PAGE_DIR = static-page
STATIC_PAGES = $(wildcard $(STATIC_PAGE_DIR)/*.pdf)

LATEX_TOOL=xelatex

all: dirs $(OUTDIR)/main.pdf

$(OUTDIR)/main.pdf: $(MAIN) $(CHAPTERS) $(PAGES) $(STATIC_PAGES)
	latexmk -$(LATEX_TOOL) -outdir=$(OUTDIR) $<

open: $(OUTDIR)/main.pdf
	open $<

dirs:
	mkdir -p $(OUTDIR)

clear:
	latexmk -c

clean:
	rm -rf build
