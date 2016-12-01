MARKDOWN = \
	0.title.md \
	1.abstract.md \
	2.introduction.md \
	3.methods.md \
	4.results.md \
	5.discussion.md \
	6.acknowledgements.md \
	999.ref_dummy.md \
	8t1_resp_stats.md \
	9.figures.md \
	10.appendix1.md

FIGURES = figures/*.png

# TABLES = tables/*.csv

BIBSTYLE = ~/UI/dissertation/ecology.csl

CROSSREFMETA = \
	-M chapters:True \
	-M chaptersDepth:1 \
	-M chapDelim:"" \
	-M figPrefix:Figure \
	-M tblPrefix:Table

OUTPUTS = \
	ckb-tface.docx
#	ckb-tface.pdf \
#	ckb-tface.html

INTERMEDIATES = \
	*.hi \
	*.o \
	*.log \
	*.aux

all: $(OUTPUTS) clean-intermediates

# filters/pandoc-word-sectionbreak: filters/pandoc-word-sectionbreak.hs
# 	ghc --make $^ -o $@

ckb-tface.html: \
		7.soyface.bib \
		$(BIBSTYLE) \
		$(MARKDOWN) \
		$(FIGURES) \
		$(TABLES)
	pandoc -s -S \
		--filter pandoc-crossref \
		-f markdown+implicit_figures+footnotes \
		$(CROSSREFMETA) \
		$(MARKDOWN) \
		--bibliography 7.soyface.bib \
		--csl $(BIBSTYLE) \
		-o $@

ckb-tface.pdf: \
		7.soyface.bib \
		$(BIBSTYLE) \
		pdftemplate.tex \
		$(MARKDOWN) \
		$(FIGURES) \
		$(TABLES)
	pandoc -s -S \
		--filter pandoc-crossref \
		-f markdown+implicit_figures+footnotes \
		-V geometry:margin=1in \
		-V mainfont=Times \
		$(CROSSREFMETA) \
		$(MARKDOWN) \
		--bibliography 7.soyface.bib \
		--csl $(BIBSTYLE) \
		--template pdftemplate.tex \
		-o $@

ckb-tface.docx: \
		~/UI/dissertation/pandoc-word-sectionbreak-nolinenum.hs \
		7.soyface.bib \
		$(BIBSTYLE) \
		~/UI/dissertation/diss_style.docx \
		$(MARKDOWN) \
		$(FIGURES) \
		$(TABLES)
	pandoc -s -S \
		--filter ~/UI/dissertation/pandoc-word-sectionbreak-nolinenum.hs \
		--filter pandoc-crossref \
		-f markdown+implicit_figures+footnotes \
		--bibliography 7.soyface.bib \
		--csl $(BIBSTYLE) \
		$(CROSSREFMETA) \
		$(MARKDOWN) \
		-t native | pandoc - \
			-f native \
			--filter ~/UI/dissertation/unmathsub.py \
			--reference-docx ~/UI/dissertation/diss_style.docx \
			-o $@

.PHONY: all docx pdf html clean-intermediates clean
docx: ckb-tface.docx
pdf: ckb-tface.pdf
html: ckb-tface.pdf
clean-intermediates:
	rm -f $(INTERMEDIATES)
clean: clean-intermediates
	rm -f $(OUTPUTS)
