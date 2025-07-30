all:
	latexrun --bibtex-cmd=biber note.tex
	latexrun poster.tex

nobib:
	latexrun note.tex

poster:
	latexrun --latex-cmd=lualatex --bibtex-cmd=biber poster.tex

diff:
	git latexdiff $(COMMIT) main --main article.tex --output diff-article.pdf --ignore-makefile --run-biber

.PHONY : all poster nobib diff
