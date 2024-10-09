all: build test

.PHONY: build
build: src/Database/PostgreSQL/Row.purs
	spago build

.PHONY: test
test: src/Database/PostgreSQL/Row.purs
	spago test

src/Database/PostgreSQL/Row.purs: Rows.pl
	mkdir -p $(dir $@)
	perl Rows.pl $@
