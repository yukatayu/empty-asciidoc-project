all:
	mkdir -p images
	mkdir -p build
	rm -f build/book.pdf build/book.html
	asciidoctor -b html5 -o build/book.html main.adoc
	asciidoctor-pdf -r asciidoctor-mathematical -r asciidoctor-pdf-cjk -o _tmp_book.pdf  main.adoc
	mv _tmp_book.pdf build/book.pdf

clean:
	rm -f images/stem-*.png
	rm -f build/images/stem-*.png
	rm -f build/book.pdf build/book.html ./_tmp_book.pdf

