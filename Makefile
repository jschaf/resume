LATEX_DIR := latex
CONTEXT_DIR := context
OUTPUT_DIR := output
RESUME_NAME := joe-schafer-resume-$(shell date +%F).pdf

.PHONY: all clean latex-resume context-resume publish

all: publish

publish: context-resume
	mkdir -p $(OUTPUT_DIR)
	mv $(CONTEXT_DIR)/resume-context.pdf $(OUTPUT_DIR)/$(RESUME_NAME)

latex-resume:
	$(MAKE) -C $(LATEX_DIR) resume

context-resume:
	$(MAKE) -C $(CONTEXT_DIR) resume

watch:
	$(MAKE) -c $(CONTEXT_DIR) watch

clean:
	rm -f $(OUTPUT_DIR)/*
