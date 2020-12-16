name = spieltheorie_zusammenfassung
.PHONY: clean $(name).pdf

clean:
	$(RM) *.aux *.log *.fls *.out *.fdb_latexmk *.xdv *.tdo *.bbl *.blg *.nav *.snm *.toc

$(name).pdf: $(name).tex
	latexmk -pdf -xelatex -use-make -pvc $<
