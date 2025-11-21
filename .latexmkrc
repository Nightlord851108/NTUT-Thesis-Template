# Use XeLaTeX instead of pdfLaTeX
$pdflatex = 'xelatex %O %S';
$pdf_mode = 1;
$postscript_mode = 0;
$dvi_mode = 0;

# Use bibtex
$bibtex_use = 2;

# Output directory
$out_dir = 'build';

# Ensure auxiliary files are also in the output directory
$aux_dir = 'build';

# Clean up extensions
$clean_ext = 'aux bbl blg fdb_latexmk fls log nav out snm synctex.gz toc xdv run.xml bcf';
