ROFF := eqn | pic | groff -ms -k -dpaper=a5 -P-pa5

%.ps: %.ms
	cat $< | $(ROFF) > $@

.PHONY: watch-%.ps
watch-%.ps: %.ps
	entr -c make $< <<< $(<:.ps=.ms)
