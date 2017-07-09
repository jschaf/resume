SOURCE_FILE := resume-latex.tex
# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: resume-latex.pdf all clean resume watch clean

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: resume

# CUSTOM BUILD RULES

# In case you didn't know, '$@' is a variable holding the name of the target,
# and '$<' is a variable holding the (first) dependency of a rule.
# "raw2tex" and "dat2tex" are just placeholders for whatever custom steps
# you might have.

# %.tex: %.raw
#         ./raw2tex $< > $@

# %.tex: %.dat
#         ./dat2tex $< > $@

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.

# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

resume-latex.pdf: resume-latex.tex sound-resume.cls baselinegrid.sty
	latexmk -pdflua -interaction=nonstopmode -time $(SOURCE_FILE)

resume: resume-latex.pdf

watch:
	make resume-latex.pdf || true
	when-changed $(SOURCE_FILE) baselinegrid.sty sound-resume.cls  -c "make; zsh -c print-separator"

clean:
	latexmk -c
