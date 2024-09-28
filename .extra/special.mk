PIECES = $(wildcard pieces/*)
SPECIAL_PIECES=$(wildcard special_pieces/*)
RENDERS = $(PIECES:pieces/%.ly=renders/%.pdf) $(SPECIAL_PIECES:special_pieces/%.ly=renders/%.pdf)

all:$(RENDERS)

tmp/%.ly: special_pieces/%.ly common/themes/special.ly
	./build.sh $^ $@

tmp/%.ly: pieces/%.ly common/themes/default.ly
	./build.sh $^ $@

renders/%.pdf:tmp/%.ly
	./lilypond.sh $< -o $@

clean:
	rm -f renders/*
	rm -f tmp/*
