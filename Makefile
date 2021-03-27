ROFF := eqn | pic | preconv | GROFF_FONT_PATH=fonts groff -ms -dpaper=a5 -P-pa5

%.ps: %.ms macros.ms macros.eqn
	cat $< | $(ROFF) > $@

.PHONY: watch-%.ps
watch-%.ps: %.ps
	ls $(<:.ps=.ms) macros.ms | entr -c make $<
