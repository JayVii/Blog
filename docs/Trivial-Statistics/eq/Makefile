# Copyright (c) 2018 Jan "JayVii" <jayvii@posteo.de>
# SPDX-License-Identifier: GPL-3.0

INFILES1=$(wildcard *.tex)
INFILES2=$(wildcard *.pdf)
LICENSES=$(wildcard *.license)
OUTFILES=$(wildcard *.png)

all:
	latexmk -pdf ${INFILES1}
	latexmk -c
	mogrify -format png -density 300 -- *.pdf
	rm ./*.pdf

clean:
	${RM} ${OUTFILES} ${INFILES2} ${LICENSES}

license:
	${RM} ${LICENSES}
	for f in ${OUTFILES} ; do \
	  grep "%" $$(echo $$f | sed -e 's/\.png/.tex/g') > $$f.license ; \
	  sed -i $$f.license -e 's/%\ //' -e 's/GPL-3\.0/CC-BY-SA-4.0/' ; \
	done
