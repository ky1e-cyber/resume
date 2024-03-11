all: pdf

pdf: html
	wkhtmltopdf \
		--enable-local-file-access\
		resume.html\
		resume.pdf

html:
	pandoc --standalone \
		-o resume.html\
		-c resume-css-stylesheet.css\
		resume.md

clean:
	rm -f resume.html resume.pdf
