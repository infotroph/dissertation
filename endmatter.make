
CROSSREFMETA = \
	-M chapters:True \
	-M chaptersDepth:1 \
	-M chapDelim:""

COMMONDEPS = \
	pandoc-word-sectionbreak-nolinenum.hs \
	unmathsub.py \
	diss_endmatter.bib \
	ecology.csl \
	diss_style.docx

PANDOCBASE = pandoc -s -S \
	-f markdown+implicit_figures \
	--bibliography diss_endmatter.bib \
	--csl ecology.csl \
	--filter pandoc-word-sectionbreak-nolinenum.hs \
	--filter pandoc-crossref \
	--filter pandoc-citeproc \
	--filter unmathsub.py \
	--reference-docx diss_style.docx \
	$(CROSSREFMETA)

all: abstract.docx acknowledgements.docx intro.docx conclusion.docx

.phony: all

abstract.docx: abstract.md $(COMMONDEPS)
	$(PANDOCBASE) abstract.md -o $@

acknowledgements.docx: acknowledgements.md $(COMMONDEPS)
	$(PANDOCBASE) acknowledgements.md -o $@

intro.docx: intro.md $(COMMONDEPS)
	$(PANDOCBASE) intro.md -o $@

conclusion.docx: conclusion.md $(COMMONDEPS)
	$(PANDOCBASE) conclusion.md -o $@
