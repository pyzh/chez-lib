# Build the documentation
asciidoc --theme=volnitsky -a numbered -a toc slib-time.txt

# Build the package
snow-chibi --noimage package --authors="Aubrey Jaffer" --maintainers="Peter Lane <peter@peterlane.info>" --version="SLIB-3b5-r7rs" --description="Common-Lisp time conversion routines" --doc="slib-time.html" ../slib/common-lisp-time.sld
