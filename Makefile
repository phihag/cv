
pdf: cv.de.pdf cv.en.pdf

cv.de.pdf: cv.de.html cv.css
	chrome --headless --disable-gpu --no-margins --print-to-pdf=cv.de.pdf http://localhost/cv/

cv.en.pdf: cv.en.html cv.css
	chrome --headless --disable-gpu --no-margins --print-to-pdf=cv.en.pdf http://localhost/cv/

deps:
	npm install stylelint stylelint-config-standard html-validator-cli

lint:
	node_modules/.bin/stylelint *.css
	node_modules/.bin/html-validator --file=cv.de.html --verbose
	node_modules/.bin/html-validator --file=cv.en.html --verbose

clean:
	rm -f cv.de.pdf cv.en.pdf

.PHONY: deps pdf clean lint
