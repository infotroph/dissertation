
CROSSREFMETA = \
	-M chapters:True \
	-M chaptersDepth:1

all: intro.docx conclusion.docx

.phony: all

intro.docx: intro.md diss_endmatter.bib ecology.csl diss_style.docx ./unmathsub.py
	pandoc -s -S \
		--filter pandoc-crossref \
		-f markdown+implicit_figures \
		--bibliography diss_endmatter.bib \
		--csl ecology.csl \
		$(CROSSREFMETA) \
		intro.md \
		-t native | pandoc - \
			-f native \
			--filter ./unmathsub.py \
			--reference-docx diss_style.docx \
			-o $@

conclusion.docx: conclusion.md diss_endmatter.bib ecology.csl diss_style.docx ./unmathsub.py
	pandoc -s -S \
		--filter pandoc-crossref \
		-f markdown+implicit_figures \
		--bibliography diss_endmatter.bib \
		--csl ecology.csl \
		$(CROSSREFMETA) \
		conclusion.md \
		-t native | pandoc - \
			-f native \
			--filter ./unmathsub.py \
			--reference-docx diss_style.docx \
			-o $@
