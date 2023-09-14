# Bordeaux University Ph.D. Thesis Template
## General information
This is a Ph.D. thesis template (LaTeX) with respect to the University of Bordeaux rules

This thesis template was done in 2013-2015 according to the rules of Université de Bordeaux for based on Ph.D. [thesis](https://theses.hal.science/tel-01241762). The template can be compiled with two different chains:
 - xelatex -- beamer -- makeglossaries -- xelatex -- xelatex
 - lualatex -- beamer -- makeglossaries -- lualatex -- lualatex

In my thesis all (except 2) Figures were done using **pgfplots** and **tikz** packages. The example you can find in \figures\Chapter2

cleanLaTEX.bat file cleans folders after compilation

You will find some crazy examples, such as **molecules.tex** file in \figures\Chapter2, which will provide useful examples of how to draw complex chemical structures in LaTeX.

```latex
\documentclass[12pt]{standalone}
\usepackage{tikz}
\usepackage{mathspec}
\setmainfont[Mapping=tex-text, Numbers={Lining,Proportional}]{Times New Roman} 
\setmathsfont(Digits)[Numbers={Lining,Proportional}]{Times New Roman}
\setmathsfont(Latin)[Scale=MatchLowercase]{Times New Roman}
\setmathsfont(Greek)[Scale=MatchLowercase]{Times New Roman}
\setmathrm{Times New Roman}

\usepackage{chemfig}
\usepackage[version=3]{mhchem}
\usetikzlibrary{arrows,shadows,calc,shapes,backgrounds,intersections,positioning} 
\makeatletter
\def\CF@node@content{%
	\expandafter\expandafter\expandafter
	\printatom\expandafter\expandafter\expandafter
	{\csname atom@\number\CF@cnt@atomnumber\endcsname}%
	\ensuremath{\CF@node@strut}%
}

%([:45]-[,2.2]N*6([:100]-*6(-(-*6([:-60]-N?[o,{-}]=([:-100]-*6(=*6(-N?[o,{-}]=-=-)-=-[,,,,line width=3pt]=(-[::180,,,,line width=3pt])-[,,,,line width=3pt]-))-=(-*6(=-=(-*6(-*6(-=-=-)=-=*6(-=-=-)-=))-=-))-=))=-@{tr}=-=)--=(-[::180,,,,line width=3pt])-[,,,,line width=3pt]-(-[::180,,,,line width=3pt])))}}
\makeatother
\setdoublesep{0.35700 em}  % 'Bond Spacing'
\setatomsep{1.78500 em}    % 'Fixed Length'
\setbondoffset{0.18265 em} % 'Margin Width'
\newcommand{\bondwidth}{0.06642 em} % 'Line Width'
\setbondstyle{line width = \bondwidth,cap=round}
\renewcommand*{\printatom}[1]{{\sffamily\cf{#1}}}
\begin{document}
	\begin{tikzpicture}[font=\small ,line width=1pt,node distance=1cm, inner sep=-0.05cm]
	\node[anchor=north] at(0,0){\chemname{\chemfig{[:135]Ru?[o](-[,2.2]N*6([:80]=-=-*6(=-[,,,,line width=3pt]=(-[::180,,,,line width=3pt])-[,,,,line width=3pt](-*6([:-120]-=(-*6(-=-=-=-))-=([:-80]-*6(=-=-*6(-=(-[::180,,,,line width=3pt])-[,,,,line width=3pt]=N?[o,{-}](-[::180,,,,line width=3pt])-)=-))-N?[o,{-}]=))=)--))([:-45]-[,2.2]N_3*6([:-100]=-=-*6(=-[,,,,line width=3pt]=(-[::180,,,,line width=3pt])-[,,,,line width=3pt](-*6([:60]-=*6(-*6(=-=-=-))-=([:100]-*6(=-@{tr}=-*6(-=(-[::180,,,,line width=3pt])-[,,,,line width=3pt]=N_1?[o,{-}](-[::180,,,,line width=3pt])-)=-))-N_2?[o,{-}]=))=)--))}}{\large \textbf{1}}	\chemmove{\draw[very thick,inner sep=0pt](tr)++(.5cm,-.1cm)--++(0,2em)node[anchor=north west,yshift=-4mm]{$\sf \left(PF_{6}\right)_2$}--++(-2em,0);}};
	
	\node[anchor=north] at(0,-7){ \chemname{\chemfig{[:135]Ru?[o](-[,2.2]N*6([:80]=-=-*6(=-[,,,,line width=3pt]=(-[::180,,,,line width=3pt])-[,,,,line width=3pt](-*6([:-120]-=(-*6(-=-(-*6(=*6(-=-=-)-=-*6(-=-=-)=-))=-=-))-=([:-80]-*6(=-=-*6(-=(-[::180,,,,line width=3pt])-[,,,,line width=3pt]=N?[o,{-}](-[::180,,,,line width=3pt])-)=-))-N?[o,{-}]=))=)--))([:-45]-[,2.2]N_3*6([:-100]=-=-*6(=-[,,,,line width=3pt]=(-[::180,,,,line width=3pt])-[,,,,line width=3pt](-*6([:60]-=*6(-*6(=-=(-*6(-*6(-=-=-)=-=*6(-=-=-)-=))-=-))-=([:100]-*6(=-@{tr}=-*6(-=(-[::180,,,,line width=3pt])-[,,,,line width=3pt]=N_1?[o,{-}](-[::180,,,,line width=3pt])-)=-))-N_2?[o,{-}]=))=)--))}}{\large \textbf{2}}\chemmove{\draw[very thick,inner sep=0pt](tr)++(.5cm,-.1cm)--++(0,2em)node[anchor=north west,yshift=-4mm]{$\sf \left(PF_{6}\right)_2$}--++(-2em,0);}};
	\path (0,.5)--++(2,0);
	\path (0,-13.2)--++(1,0);
	\end{tikzpicture}
\end{document}
```

## Some page examples

![The front page](https://github.com/Saldenisov/thesis-Bordeaux/blob/main/images_md/thesis_page-0001.jpg)

![Page of contents](https://github.com/Saldenisov/thesis-Bordeaux/blob/main/images_md/thesis_page-0011.jpg)

![Complex chemical structures](https://github.com/Saldenisov/thesis-Bordeaux/blob/main/images_md/thesis_page-0024.jpg)

![Graphs and images](https://github.com/Saldenisov/thesis-Bordeaux/blob/main/images_md/thesis_page-0026.jpg)



## Requirements
 - [Perl](https://strawberryperl.com/)
 - [Miktex](https://miktex.org/) or [Tex Live](https://tug.org/texlive/) as a LaTeX distribution
 - [TeXStudio](https://www.texstudio.org/) or [TeXMaker](https://www.xm1math.net/texmaker/)
 - thesis-Bordeaux.cls contains all required packages to be installed for thesis to compile.
