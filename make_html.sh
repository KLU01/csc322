#!/bin/bash

asciidoctor -D html asciidoc_source/*.adoc

echo "<html><head></head><body><ul>" > index.html

for filename in html/*.html; do
	echo "<li><a href='" >> index.html
	echo $filename >> index.html
	echo "'>" >> index.html
	echo $filename >> index.html
	echo "</li>" >> index.html
done

echo "</ul></body></html>" >> index.html
