SOURCE_FILE := resume-context.tex
.PHONY: resume-context.pdf resume watch all clean
all: resume

resume: resume-context.pdf

resume-context.pdf: resume-context.tex type-minionpro.tex type-myriadpro.tex
	context -nonstopmode --silent="fonts,system,languages,open source,close source,mkiv lua stats" \
    $(SOURCE_FILE)

watch:
	make resume-context.pdf || true
	when-changed $(SOURCE_FILE) type-minionpro.text type-myriadpro.tex -c \
    "make; zsh -c print-separator"

clean:
	context --purge resume-context
