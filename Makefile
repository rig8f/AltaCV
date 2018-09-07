
ifeq ($(OS),Windows_NT)
	RM = del /Q /F
	CP = copy
	NL = nul
	FixPath = $(subst /,\,$1)
else
	RM = rm -f
	CP = cp
	NL = /dev/null
	FixPath = $1
endif

%.pdf: %.tex
	arara $<

all: mmayer.pdf sample.pdf clean

clean:
	@$(RM) *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls 2> $(NL)
	@$(RM) *.lof *.log *.lol *.lot *.out *.run.xml 2> $(NL)
	@$(RM) *.synctex.gz *.toc *-blx.bib 2> $(NL)

fullclean: clean
	@$(RM) *.pdf 2> $(NL)

.PHONY: all clean fullclean
