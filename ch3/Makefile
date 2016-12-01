# inputs
MARKDOWN = \
	title.md \
	abstract.md \
	keywords.md \
	intro.md \
	methods.md \
	results.md \
	discussion.md \
	acknowledgements.md \
	ref-dummy.md \
	figures.md \
	priors.md \
	figures_supplement.md

BIBFILE = rhizo.bib
BIBSTYLE = ~/UI/dissertation/ecology.csl
REFDOCX = ~/UI/dissertation/diss_style.docx

CROSSREFMETA = \
	-M chapters:True \
	-M chaptersDepth:1 \
	-M chapDelim:"" \
	-M figPrefix:Figure \
	-M tblPrefix:Table \
	-M eqnPrefix:Equation \
	-M secPrefix:Supplement

FIGURES = figures/*.png

# outputs
ALL = ckbrhizo_dissch3.docx

# rules
all: $(ALL)

.phony: all

filters/pandoc-word-sectionbreak: filters/pandoc-word-sectionbreak.hs
	ghc --make $^ -o $@

ckbrhizo_dissch3.docx: $(MARKDOWN) $(BIBFILE) $(BIBSTYLE) $(REFDOCX) $(FIGURES) \
		~/UI/dissertation/pandoc-word-sectionbreak-nolinenum.hs ~/UI/dissertation/unmathsub.py
	pandoc -s -S \
		--filter ~/UI/dissertation/pandoc-word-sectionbreak-nolinenum.hs \
		--filter pandoc-crossref \
		--filter pandoc-citeproc \
		--filter ~/UI/dissertation/unmathsub.py \
		-f markdown+implicit_figures \
		--bibliography $(BIBFILE) \
		--csl $(BIBSTYLE) \
		--reference-docx $(REFDOCX) \
		$(CROSSREFMETA) \
		$(MARKDOWN) \
		-o $@
