# Diretório onde os arquivos temporários e o PDF serão
# gerados por latexmk.
#
# Mantenha sincronizado com o valor em .gitignore
FILE = tese
OUT_DIR = output
TEMP_DIR = tmp
TEX = pdflatex
BIB = bibtex
TEX_FLAGS = --aux-directory=$(TEMP_DIR) -output-directory=$(OUT_DIR)
LATEXMK_FLAGS = -pdf -synctex=1 --shell-escape -auxdir=$(TEMP_DIR) -outdir=$(OUT_DIR)


.PHONY:	all pdf bib clean

all: complete

complete:
	latexmk -pdflatex="$(TEX)" $(LATEXMK_FLAGS) $(FILE).tex

pdf:
	$(TEX) $(TEX_FLAGS) $(FILE).tex

bib: $(TEMP_DIR)/$(FILE).aux
	$(BIB) $(TEMP_DIR)/$(FILE)

clean-win:
	@del /f /a /s $(TEMP_DIR)

clean-linux-mac:
	rm -r $(TEMP_DIR)/*
