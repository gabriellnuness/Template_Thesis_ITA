# Template Thesis ITA
> Template Thesis ITA ABNT NBR 6023:2018
> 
> Também disponível no [Overleaf](https://pt.overleaf.com/latex/templates/thesis-template-aeronautics-institute-of-technology-ita/yhfrqqydpygk)
> 
> Contribua com esse projeto pelo Github: [AlejandroRios/Template_Thesis_ITA](https://github.com/AlejandroRios/Template_Thesis_ITA)

## Instruções
Para montar a sua tese, você deve atualizar:

1. O arquivo tese.tex
Este é o arquivo principal que vai chamar os capítulos
Ele também tem informações, como o seu nome, curso ...
No primeiro comando deste arquivo se define se a tese é em inglês ou português

2. Os capítulos cap1.tex, cap2.tex, ... dentro das pastas Cap1, Cap2 ...
Dentro de cada pasta de capítulo, são colocadas as figuras deste capítulo (.jpg, .pdf, .bmp ...)

3. Os textos .tex da pasta PreTextuais (textos que vem antes do Sumário)
agradecimentos, resumo, abstract, listaabreviaturas, listasimbolos

4. As referências no arquivo Referencias/referencias.bib

5. Caso tenha, atualizar os anexos e apêndices nas pastas AneA, ApeA...

## texlive

It is recommended to use Texlive instead of Miktex because it already comes with Perl to run the Makefile with latexmk (`tlmgr install latexmk`).

Install texliveonfly to auto install required packages: `tlmgr install texliveonfly`. 

Then, inside texliveonfly.py change "tlmgr" to "tlmgr.bat" if on windows.
Run the first time with texliveonfly to install all packages: `texliveonfly --compiler=pdflatex tese.tex`

## References
The `biblatex-abnt` is not updated in CTAN yet, so it does not obey nbr6023:2018 neither nbr10520:2023.
To get access to the most recent version, clone the `dev` branch from [biblatex-abnt](https://github.com/abntex/biblatex-abnt) and place it in your local texlive folder, e.g., `C:\texlive\2023\texmf-dist\tex\latex\biblatex-abnt`.
