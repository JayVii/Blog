INFILES1=$(wildcard *.tex)
INFILES2=$(wildcard *.pdf)
OUTFILES=$(wildcard *.png)

all:
	latexmk -pdf ${INFILES1}
	latexmk -c
	mogrify -format png -- *.pdf
	rm ./*.pdf

clean:
	${RM} ${OUTFILES}
