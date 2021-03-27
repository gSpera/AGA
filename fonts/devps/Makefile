SRC:=/usr/share/fonts/TTF/DejaVuMathTeXGyre.ttf
BASENAME := DJVM

.PHONY: all
all: $(BASENAME)

$(BASENAME): $(BASENAME).afm
	afmtodit $(BASENAME).afm textmap $(BASENAME)
$(BASENAME).afm: $(SRC)
	ttf2afm $(SRC) > $(BASENAME).afm
.PHONY: clean
clean:
	rm -f $(BASENAME) $(BASENAME).afm


