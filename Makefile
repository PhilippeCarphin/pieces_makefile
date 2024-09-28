PIECES = $(wildcard pieces/*)
RENDERS = $(PIECES:pieces/%.ly=renders/%.pdf)

all:$(RENDERS)

tmp/%.ly: pieces/%.ly common/themes/default.ly
	./build.sh $^ $@

renders/%.pdf:tmp/%.ly
	./lilypond.sh $< -o $@

clean:
	rm -f renders/*.pdf
	rm -f tmp/*.ly
