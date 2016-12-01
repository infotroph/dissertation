# inputs
MARKDOWN = \
	title.md \
	abstract.md \
	intro.md \
	methods.md \
	results.md \
	discussion.md \
	acknowledgements.md \
	ref_dummy.md \
	species_table.md \
	figures.md \
	supp_dummy.md \
	figures_supplement.md

BIBFILE = prairie_root.bib
BIBSTYLE = ~/UI/dissertation/ecology.csl
REFDOCX = ~/UI/dissertation/diss_style.docx

CROSSREFMETA = \
	-M chapters:True \
	-M chaptersDepth:1 \
	-M chapDelim:"" \
	-M chapPrefix:"" \
	-M figPrefix:Figure \
	-M tblPrefix:Table \
	-M eqnPrefix:Equation

FIGURES = ../figs/mass_texture.pdf \
	../figs/agbg_genblock.pdf \
	../figs/family_depth.pdf \
	../figs/ordination.pdf \
	../figs/h2o.pdf \
	../figs/mock_gen.pdf \
	../figs/spikes.pdf \
	../figs/genus_depth.pdf \
	../figs/cooccur_obs_exp.pdf \
	../figs/cooccur_effect.pdf

# outputs
ALL = ckbprairie_dissch4.docx

# rules
all: $(ALL)

.phony: all

filters/pandoc-word-sectionbreak: filters/pandoc-word-sectionbreak.hs
	ghc --make $^ -o $@

ckbprairie_dissch4.docx: $(MARKDOWN) $(BIBFILE) $(BIBSTYLE) $(REFDOCX) $(FIGURES) \
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
