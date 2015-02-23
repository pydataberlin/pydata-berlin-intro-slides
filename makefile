.PHONY: pdf

pdf:
	pandoc -t beamer slides.rst -o slides.pdf
