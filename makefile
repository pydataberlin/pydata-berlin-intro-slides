.PHONY: pdf

pdf:
	pandoc -t beamer slides.rst -o slides.pdf
loop:
	impressive -p 1-2 -a 30 slides.pdf
