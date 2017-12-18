
pdf: cv.de.pdf

cv.de.pdf: cv.de.html cv.css
	chrome --headless --disable-gpu --no-margins --print-to-pdf=cv.de.pdf http://localhost/cv/

clean:
	rm -f cv.de.pdf

.PHONY: pdf clean
