T = $(wildcard src/*.t)

.PHONY: all
all: src/empty.rs

src/%.rs: src/%.t
	typical generate $< --rust $@

.PHONY: format
format: tmp/format_t
tmp/format_t: $(T)
	typical format $? && touch $@
