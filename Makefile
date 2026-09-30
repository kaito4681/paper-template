.PHONY: all pdf watch clean

OUT_DIR := out
LATEXMK = latexmk -interaction=nonstopmode -synctex=1 -outdir=$(OUT_DIR)

all: pdf

pdf:
	@mkdir -p $(OUT_DIR)
	$(LATEXMK) main.tex
	@cp $(OUT_DIR)/main.pdf main.pdf

watch:
	@mkdir -p $(OUT_DIR)
	$(LATEXMK) -pvc -view=none -e '$$success_cmd = "cp $(OUT_DIR)/main.pdf main.pdf";' main.tex

clean:
	rm -rf $(OUT_DIR) main.pdf
