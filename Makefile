all:
	latexrun --bibtex-cmd=biber note.tex

nobib:
	latexrun note.tex

diff:
	git latexdiff $(COMMIT) main --main article.tex --output diff-article.pdf --ignore-makefile --run-biber
