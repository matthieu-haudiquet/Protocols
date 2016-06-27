RMD   = $(shell find documents -name *.Rmd)
HTML  = $(RMD:.Rmd=.html)
PDF   = $(RMD:.Rmd=.pdf)
WORD  = $(RMD:.Rmd=.docx)
TARGETS = $(HTML) $(PDF) $(WORD)

all: $(TARGETS)

default: $(TARGETS)

clean:
	@rm -rf $(TARGETS)

html: $(HTML)

pdf: $(PDF)

word: $(WORD)

$(HTML): %.html: %.Rmd
	@Rscript -e 'rmarkdown::render("$<", output_format= "html_document")'

$(PDF): %.pdf: %.Rmd
	@Rscript -e 'rmarkdown::render("$<", output_format= "pdf_document")'

$(WORD): %.docx: %.Rmd
	@Rscript -e 'rmarkdown::render("$<", output_format= "word_document")'
