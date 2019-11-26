all:
	mkdir -p images
	mkdir -p build
	rm -f build/book.pdf build/book.html
	asciidoctor -b html5 -o build/book.html main.adoc
	asciidoctor-pdf -r asciidoctor-mathematical -r asciidoctor-pdf-cjk -o _tmp_book.pdf  main.adoc
	mv _tmp_book.pdf build/book.pdf

with-docker:
	mkdir -p images
	mkdir -p build
	sudo docker run -v $(CURDIR):/documents --rm -h asciidoc yukatayu/asciidoc_env_v1:latest

clean-with-docker:
	sudo docker run -v $(CURDIR):/documents --rm -h asciidoc yukatayu/asciidoc_env_v1:latest clean

clean:
	rm -f images/stem-*.png
	rm -f build/images/stem-*.png
	rm -f build/book.pdf build/book.html ./_tmp_book.pdf

