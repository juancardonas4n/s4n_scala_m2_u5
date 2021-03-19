DOCUMENTS=M2_U5_1.pdf

all: $(DOCUMENTS)

M2_U5_1.pdf: M2_U5_1.md M2_U5_1.bib
	pandoc -s M2_U5_1.md --bibliography M2_U5_1.bib --pdf-engine=xelatex -o $@

clean:
	$(RM) -f $(DOCUMENTS)
	$(RM) -f *~ *.*~

