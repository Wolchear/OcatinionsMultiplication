# Šito makefile tikslas testuoti programma `calc-octonions`
# Make`as vykdo skriptus pagal atitinkamus output failu
# Usage:
# make
# make clean - ištrins visus sukurtus diff failus


#keliai
OUTPUTS_DIR = outputs
CASES_DIR= cases
DIFF_DIR= diff
#pletiniai
OUT_EXT=out
DIFF_EXT=diff
SH_EXT=sh

#Pagal OUTPUT failų sąrašo sudarom DIFF failų sąrašą
OUTPUT_FILES = $(wildcard ${OUTPUTS_DIR}/*.${OUT_EXT})
DIFF_FILES = $(patsubst ${OUTPUTS_DIR}/%.${OUT_EXT}, ${DIFF_DIR}/%.${DIFF_EXT}, ${OUTPUT_FILES})

# Nustatom priklausomybė nuo diff failų
all: ${DIFF_FILES}

$(DIFF_DIR)/%.${DIFF_EXT}: $(OUTPUTS_DIR)/%.${OUT_EXT}
	@if [ ! -f $@ ]; then \
		./${CASES_DIR}/$(notdir $(basename $<)).${SH_EXT} 2>&1| \
		diff -b - $< > $@; \
		if [ $$? -eq 0 ]; then \
			echo "Test $(basename $<) passed.";\
		else \
			echo "Test $(basename $<) not passed.";\
			echo "Check diff results in diff/$(basename $<).\n"; \
			echo " cat for diff/$(basename $<)."; \
			cat  $@; \
			echo ""; \
		fi \
	fi

.PHONY: clean 
clean:
	rm -f ${DIFF_DIR}/*.${DIFF_EXT};
