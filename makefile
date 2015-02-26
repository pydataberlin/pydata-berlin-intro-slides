.PHONY: pdf slides_loop.pdf

pdf:
	pandoc -t beamer slides.rst -o slides.pdf
loop: slides_loop.pdf
	impressive -a 30 -w slides_loop.pdf
slides_loop.pdf:
	pdftk slides.pdf burst
	pdftk pg_0001.pdf pg_0002.pdf pg_0003.pdf cat output slides_loop.pdf
