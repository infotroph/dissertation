#!/usr/bin/env runhaskell

{- 
Pandoc filter to replace horizontal rules with hard section breaks when output is in Word format.

Usage: 
	pandoc --filter pandoc-word-sectionbreak.hs  input.md -o output.docx

Alternately, compile the filter, store it anywhere you like, 
add it to your PATH, and call the compiled version:
	ghc --make pandoc-word-sectionbreak.hs
	rm pandoc-word-sectionbreak.hi pandoc-word-sectionbreak.o
	mv pandoc-word-sectionbreak /path/to/your/binaries/pandoc-word-sectionbreak
	export PATH=$PATH:/path/to/your/binaries

	pandoc --filter pandoc-word-sectionbreak  input.md -o output.docx

WARNING - WARNING - WARNING
One ugly hack and one VERY ugly hack: 
	Ugly: 
		If you want line numbers that continue through all sections, add the substring
		<w:lnNumType w:countBy=\"1\" w:restart=\"continuous\"/> 
		as the second self-closing element of the secBrkXml string (in between <w:type .../> and <w:footerReference .../>)
		If you don't want line numbers, must remove. (TODO: Any way for the filter to detect this automatically?)
	VERY ugly: 
		<w:footerReference r:id=\"rId8\" w:type=\"default\"/></w:sectPr></w:pPr> 
		continues page numbers by hard-coding an internal relationship ID that points to internal footer definitions. I picked 'rId8' by generating a test document using my reference.docx, then grepping it for 'footerReference'. Note that it's **NOT** the same rId as used in the reference docx istelf! If something breaks, start by deleting this substring and hand-numbering pages.
-}

import Text.Pandoc.JSON

secBrkXml :: String
secBrkXml = "<w:p><w:pPr><w:sectPr><w:type w:val=\"nextPage\"/><w:footerReference r:id=\"rId8\" w:type=\"default\"/></w:sectPr></w:pPr></w:p>"

secBrkBlock :: Block
secBrkBlock = RawBlock (Format "openxml") secBrkXml

insertSecBrks :: Block -> Block

insertSecBrks HorizontalRule = secBrkBlock 
insertSecBrks blk = blk

main = toJSONFilter insertSecBrks