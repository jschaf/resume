LATEX_DIR := latex
CONTEXT_DIR := context

.PHONY: resume.pdf all clean

all: context-resume

latex-resume:
	$(MAKE) -C $(LATEX_DIR) resume

context-resume:
	$(MAKE) -C $(CONTEXT_DIR) resume

watch:
	$(MAKE) -c $(CONTEXT_DIR) watch

clean:
	$(MAKE) -c $(LATEX_DIR) clean
	$(MAKE) -c $(CONTEXT_DIR) clean
