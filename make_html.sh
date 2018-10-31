#!/bin/bash

asciidoctor -D html asciidoc_source/*.adoc

cat templates/start.html > index.html

for filename in html/*.html; do
	echo "<li><a href='" >> index.html
	echo $filename >> index.html
	echo "'>" >> index.html
	echo $filename >> index.html
	echo "</li>" >> index.html
done

cat templates/end.html >> index.html
cp asciidoc_source/*.png html/
