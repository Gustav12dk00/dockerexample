all: bin/example
.PHONY: bin/example
bin/example:
   @docker build . --target bin \
   --output bin/ \   
   --platform local

.PHONY: lint
lint:
    @docker build . --target lint