NAME=PorterDuff

# auto_identifiers	generate identifiers if none present in source (ON)
# citations		generate citations and bibliography (OFF)
# footnotes		generate footnotes (using [^1] syntax) (OFF)
# inline_notes		support inline footnotes^[like this] (OFF)
# raw_html		support raw HTML (OFF)
# simple_tables		support simpler table syntax (OFF)
# strikeout		support ~~strikeout~~ syntax (OFF)
# table_captions	support "Table: blah" after table turned into caption (OFF)
# tex_math_dollars	support $math$ (ON)
#
OPTIONS=-s --mathjax --from markdown+auto_identifiers+tex_math_dollars

.PHONY: all
all: $(NAME).html

$(NAME).html: $(NAME).md

%.html: %.md
	pandoc $(OPTIONS) $< -o $@

.PHONY: clean
clean:
	@echo 'Cleaning...'
	-rm -rf $(NAME).html
