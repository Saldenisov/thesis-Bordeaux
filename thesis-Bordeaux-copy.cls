\ProvidesClass{thesis-Bordeaux}[2014/10/15 Thesis of Bordeaux University]
\NeedsTeXFormat{LaTeX2e}

%% Book options
\DeclareOption{12pt}{
  \PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption{11pt}{
\PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption{a4paper}{
\PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption{onecolumn}{
\PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption{notitlepage}{
\PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption{twoside}{
\PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption{oneside}{
\PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption{openright}{
\PassOptionsToClass{\CurrentOption}{book}
}


%% Fallback
\DeclareOption*{
  \ClassWarning{myclass}{Unknown option '\CurrentOption'}
}

\DeclareOption{singlespacing}{
	\PassOptionsToPackage{\CurrentOption}{setspace}
}

\DeclareOption{onehalfspacing}{
	\PassOptionsToPackage{\CurrentOption}{setspace}
}


%% Execute default options
\ExecuteOptions{a4paper}
\ExecuteOptions{12pt}
\ExecuteOptions{onecolumn}
\ExecuteOptions{notitlepage}
\ExecuteOptions{openright}
\ExecuteOptions{twoside}
\ExecuteOptions{singlespacing}

%% Process given options
\ProcessOptions\relax

%% Load base 
\LoadClass{book}

%% Load additional packages and commands.
\RequirePackage{ragged2e}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xspace}
\RequirePackage{xargs}
\RequirePackage{setspace}
\RequirePackage{sectsty}
\RequirePackage{vruler}
\RequirePackage{fix-cm}
%\RequirePackage{pdflscape}
%\RequirePackage{pdfpages}
\RequirePackage{paralist}
\RequirePackage{indentfirst}
\RequirePackage[fit]{truncate}
\RequirePackage[font=small]{caption}
\RequirePackage{titlesec,titletoc}
\RequirePackage[unicode]{hyperref}
\RequirePackage{lettrine}
%\RequirePackage{varioref}
%\RequirePackage{perpage} %the perpage package
\RequirePackage{epigraph}
\RequirePackage{multirow}
%\RequirePackage{hhline}
\RequirePackage{caption}
\RequirePackage{rotating}
\RequirePackage{tabu}
\RequirePackage{makecell}
\RequirePackage{threeparttablex}
%\RequirePackage[version=3]{mhchem}
\RequirePackage{subfig}
\RequirePackage{wrapfig}
%\RequirePackage{tikz}
%\RequirePackage{pgfplots}
%\RequirePackage{chemfig}
%\RequirePackage{standalone}
\RequirePackage{placeins}
\RequirePackage{totcount}
\RequirePackage{mathtools}
\RequirePackage{siunitx}
\RequirePackage[makeroom]{cancel}
\RequirePackage{etoolbox}



%% Additional TeX/LaTeX code...
\newcommand{\Thesistitle}{XXXXX XXXX XXXX XXXX  XXXXX XXXXXX XXXXXX XXXX  XXXXXXX XXX XXXXXXXXXXX}
\newcommand{\setThesistitle}[1]{\renewcommand{\Thesistitle}{#1}}

\newcommand{\ThesistitleO}{ZZZZ ZZZZZZ ZZ ZZZZZZ ZZZ ZZZZ ZZZZ ZZZZZZ ZZZ ZZZZZZZZZ ZZZ ZZZZZ}
\newcommand{\setThesistitleO}[1]{\renewcommand{\ThesistitleO}{#1}}

\newcommand{\Thesisschool}{\'{E}COLE DOCTORALE DES SCIENCES PHYSIQUES ET DE L'ING\'{E}NIEUR (SP1)}
\newcommand{\setThesisschool}[1]{\renewcommand{\Thesisschool}{#1}}

\newcommand{\Thesisdate}{1 avril 2000}
\newcommand{\setThesisdate}[1]{\renewcommand{\Thesisdate}{#1}}

\newcommand{\Thesisspeciality}{LASERS, MATIÈRE ET NANOSCIENCES}
\newcommand{\setthesisSpeciality}[1]{\renewcommand{\Thesisspeciality}{#1}}

\newcommand{\Authorname}{Author Name}
\newcommand{\setAuthorname}[1]{\renewcommand{\Authorname}{#1}}

\newcommand{\Director}{Dr.~Director}
\newcommand{\setDirector}[1]{\renewcommand{\Director}{#1}}

\newcommand{\Codirector}{Dr.~Codirector}
\newcommand{\setCodirector}[1]{\renewcommand{\Codirector}{#1}}


\newcommand{\Committee}{
	\begin{tabular}{lll}
		\hspace{-2.3mm}M.  ONE, One& Université de  Bordeaux&  Président\\
		\hspace{-2.3mm}Mme. TWO, Two&  Université de  Bordeaux& Rapporteur\\
		\hspace{-2.3mm}M. THREE, Three&  Université de  Bordeaux& Rapporteur\\
		\hspace{-2.3mm}M. FOUR, Four&  Université de  Bordeaux & Examinateur\\
		\hspace{-2.3mm}M. FIVE, Five&  Université de  Bordeaux & Directeur\\
		\hspace{-2.3mm}M. SIX, Six&  Université de  Bordeaux & Co-directeur\\
	\end{tabular}
	 }
\newcommand{\setCommittee}[1]{\renewcommand{\Committee}{#1}}

\newcommand{\Cles}{Cles, Cles}
\newcommand{\setCles}[1]{\renewcommand{\Cles}{#1}}

\newcommand{\Keys}{Keys, Keys, Keys}
\newcommand{\setKeys}[1]{\renewcommand{\Keys}{#1}}

\newcommand{\Abstract}{Absract}
\newcommand{\setAbstract}[1]{\renewcommand{\Abstract}{#1}}

\newcommand{\Resume}{Résume}
\newcommand{\setResume}[1]{\renewcommand{\Resume}{#1}}

\newcommand{\Labadress}{Laboratoire Ondes et Matière d'Aquitaine Université de Bordeaux, UMR CNRS 5798 351 cours de la Liberation, 33405 Talence, France}
\newcommand{\setLabadress}[1]{\renewcommand{\Labadress}{#1}}



\let\raggedright=\RaggedRight

%\MakePerPage{footnote}

\setcellgapes{1pt}
\renewcommand\theadgape{}
\renewcommand\theadfont{\footnotesize}
\renewcommand\theadset{\def\arraystretch{.85}}

%COUNTERS
%------------------------------------------------------------
\newcounter{totalfigures}
\newcounter{totaltables}
%============================================================

%PAPER SIZE, MARGINS AND OTHER
%------------------------------------------------------------
\geometry{a4paper, mag=1000, left=2.5cm, right=2.5cm, top=1.5cm, bottom=2.0cm, headsep=0.3cm,headheight = 15pt, footskip=1cm,twoside}

%\onehalfspacing
%\singlespacing

\setlength{\belowcaptionskip}{-5pt}

\thinmuskip=1mu
\medmuskip=2mu plus 1mu minus 2mu
\thickmuskip=1mu plus 1mu minus 1mu
%============================================================


% MINITOC and TOC SETUP; SECNUMDEPTH; CAPTIONS
%------------------------------------------------------------
\setcounter{secnumdepth}{3}
%============================================================

%HYPER SETUP
%------------------------------------------------------------
\hypersetup{
colorlinks = false,
bookmarksopen = true,
bookmarksnumbered  = true,
bookmarksopenlevel = 2,
pdfstartview = {FitH},
pdfborder  = {0 0 0}
}
%============================================================


%HEADERS AND FOOTERS
%============================================================
\interfootnotelinepenalty=10000
\pagestyle{fancy}{

\makeatletter
% The actual name of the chapter without converting it to uppercase is printed in such format "Chapter number of chapter: name of the chapter. \makeatletter is used because of @.
\renewcommand{\chaptermark}[1]{\markboth{\@chapapp\xspace\thechapter: #1}{}}
\makeatother
% Section mark is set to format 
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}

\fancyhf{}
\fancyfoot[RO,LE]{\thepage}
%It isDraft was set to true, there will be printed  \versionText on Right on every even page.
%Left ODD
\fancyhead[LO]{\bf\truncate{\headwidth}{\rightmark}}
%Right EVEN
\fancyhead[RE]{\bf\truncate{\headwidth}{\leftmark}}}
%============================================================


%CHAPTERS+SECTIONS+PARAGRAPHS
%------------------------------------------------------------
\makeatletter
\def\@makechapterhead#1{%
\vspace*{-10\p@}%
{\parindent \z@ \raggedright \normalfont
\ifnum \c@secnumdepth >\m@ne
\flushright{
\fontsize{40}{2}\textbf{\@chapapp}\par
\vspace{2pt}
\rule{5cm}{1mm}
\par
\vspace{8pt}
\fontsize{70}{72}\textbf{\thechapter}}
\par\nobreak
\vskip 20\p@
\fi
\interlinepenalty\@M
\flushleft{\Huge\textbf{#1}\par\nobreak}
\vskip 20\p@
}}
\makeatother

\makeatletter
\pretocmd{\chapter}{\addtocontents{toc}{\protect\addvspace{0\p@}}}{}{}
\pretocmd{\section}{\addtocontents{toc}{\protect\addvspace{-1\p@}}}{}{}
\pretocmd{\subsection}{\addtocontents{toc}{\protect\addvspace{-1\p@}}}{}{}
\makeatother

\newcommand{\myparagraph}[1]{\paragraph{#1}\mbox{}\\}
%============================================================

%EPIGRAPH
%------------------------------------------------------------
\setlength{\epigraphwidth}{0.55\linewidth}
\renewcommand{\textflush}{center}
\renewcommand{\sourceflush}{center}
\makeatletter
% Taken and updated from http://mirrors.ctan.org/macros/latex/contrib/epigraph/epigraph.dtx
\renewcommand{\@epitext}[1]{%
\begin{minipage}{\epigraphwidth}\begin{\textflush} \hspace*{0pt}#1\\
\ifdim\epigraphrule>\z@ \@epirule \else \vspace*{-.5\baselineskip} \fi
\end{\textflush}\end{minipage}}

\renewcommand{\@episource}[1]{%
\begin{minipage}{\epigraphwidth}\begin{\sourceflush} \vspace{.25cm} #1\end{\sourceflush}
\end{minipage}}
\makeatother
%============================================================


%MIDDLE OF PAGE
%-------------------------------------------------------
\newenvironment{middleOfPage}{\vspace*{\stretch{1}}\begin{flushright}
	}{\end{flushright}\vspace*{\stretch{1}}}
%=======================================================


%GRAPHICAL MACROS
%=======================================================

%FIGURES
%--------------------------------------------------------
\newcommandx{\inputfigure}[5][1 = 1, 3 = Caption, 4=Label, 5=pdf]{
\begin{figure}[h!]
\addtocounter{totalfigures}{1} 
\centering
\ifthenelse{\equal{#5}{alone}}{\includestandalone[mode=buildnew,scale=#1]{figures/#2}\vspace{1mm}}{}
\ifthenelse{\equal{#5}{pdf}}{\includegraphics[scale=#1]{figures/#2.pdf}}{}
\ifthenelse{\equal{#5}{png}}{\includegraphics[width=#1\linewidth]{figures/#2.png}}{}
\ifthenelse{\equal{#5}{draft}}{\includegraphics[draft,width=0.5\linewidth,height=8cm,scale=#1]{figures/#2}}{}
\caption{#3.}
\label{fig:#4}
\end{figure}
}
\newcommandx{\inputfigures}[9][1 = 1, 4 = Caption1, 5 = Caption2, 6 = Label1, 7= Label2, 8 = pdf, 9 = pdf]{
\begin{figure}[!h]
\begin{minipage}[t]{.48\linewidth}
\addtocounter{totalfigures}{1} 
\centering
\ifthenelse{\equal{#8}{alone}}{\includestandalone[mode=buildnew,scale=#1]{figures/#2}\vspace{1mm}}{}
\ifthenelse{\equal{#8}{pdf}}{\includegraphics[scale=#1]{figures/#2}}{}
\ifthenelse{\equal{#8}{png}}{\includegraphics[width=#1\linewidth]{figures/#2}}{}
\ifthenelse{\equal{#8}{draft}}{\includegraphics[draft,width=0.5\linewidth,height=8cm,scale=#1]{figures/#2}}{}
\caption{#4.}
\label{fig:#6}
\end{minipage}
\hfill
\begin{minipage}[t]{.48\linewidth}
\addtocounter{totalfigures}{1} 
\centering
\ifthenelse{\equal{#9}{alone}}{\includestandalone[mode=buildnew,scale=#1]{figures/#3}\vspace{1mm}}{}
\ifthenelse{\equal{#9}{pdf}}{\includegraphics[scale=#1]{figures/#3}}{}
\ifthenelse{\equal{#9}{png}}{\includegraphics[width=#1\linewidth]{figures/#3}}{}
\ifthenelse{\equal{#9}{draft}}{\includegraphics[draft,width=0.5\linewidth,height=8cm,scale=#1]{figures/#3}}{}
\caption{#5.}
\label{fig:#7}
\end{minipage}
\end{figure}
}

\newcommandx{\inputfiguresE}[9][1 = 1, 4 = Caption1, 5 = Caption2, 6 = Label1, 7= Label2, 8 = 0.49, 9 = .49]{
\begin{figure}[!h]
\begin{minipage}[t]{#8\linewidth}
\addtocounter{totalfigures}{1} 
\centering
\includegraphics[width=#1\linewidth]{figures/#2}
\caption{#4.}
\label{fig:#6}
\end{minipage}
\hfill
\begin{minipage}[t]{#9\linewidth}
\addtocounter{totalfigures}{1} 
\centering
\includegraphics[width=#1\linewidth]{figures/#3}
\caption{#5.}
\label{fig:#7}
\end{minipage}
\end{figure}
}

\newcommandx{\inputfiguresH}[9][1 = 1, 4 = Caption1, 5 = Caption2, 6 = Label1, 7= Label2, 8 = 5, 9 = 5]{
\begin{figure}[!h]
\begin{minipage}[t]{.49\linewidth}
\addtocounter{totalfigures}{1} 
\centering
\includegraphics[height=#8cm,scale=#1]{figures/#2}
\caption{#4.}
\label{fig:#6}
\end{minipage}
\hfill
\begin{minipage}[t]{.49\linewidth}
\addtocounter{totalfigures}{1} 
\centering
\includegraphics[height=#9cm,scale=#1]{figures/#3}
\caption{#5.}
\label{fig:#7}
\end{minipage}
\end{figure}
}
%=======================================================

%LIST redefinition
%-------------------------------------------------------
\makeatletter
\renewcommand{\@listI}{%
\topsep=0pt }
\makeatother

\makeatletter
\let\old@itemize=\itemize
\def\itemize{\old@itemize
\setlength{\itemsep}{0pt}
\setlength{\parskip}{0pt}
\setlength{\leftskip}{0pt}
}
\makeatother

\makeatletter
\let\old@enumerate=\enumerate
\def\enumerate{\old@enumerate
\setlength{\itemsep}{0pt}
\setlength{\parskip}{0pt}
\setlength{\leftskip}{-15pt}
\setlength{\itemindent}{0pt}
}
\makeatother

\renewcommand{\labelitemi}{$-$}
\renewcommand{\labelitemii}{$-$}
\renewcommand{\labelitemiii}{$-$}
\renewcommand{\labelitemiv}{$-$}
\renewcommand{\theenumii}{\alph{enumii}.}
\renewcommand{\labelenumii}{\theenumii}
%=======================================================

%SUBFIGURES, FIGURES CAPTIONS redefinition
%-------------------------------------------------------
\captionsetup[subfigure]{labelformat=simple,labelsep=period,listofformat=subsimple}
\captionsetup[subtable]{labelformat=simple,labelsep=period,
listofformat=subsimple}
\captionsetup[figure]{labelsep=period}
\captionsetup[table]{labelsep=period}
%=======================================================


\extrarowheight=3pt
\newcolumntype{x}[1]{>{\centering\hspace{0pt}}p{#1}}

\newtotcounter{citnum}
\def\oldbibitem{} \let\oldbibitem=\bibitem
\def\bibitem{\stepcounter{citnum}\oldbibitem}


% TITLEPAGE
%-------------------------------------------------------
\setlength{\parskip}{0pt}
\newcommand{\skipmy}[1]{\smash
	{\rlap{\vrule %depth #1
		}}\\ 
		\nointerlineskip\vspace{#1}}


\newcommand{\titlePage}{
	\newgeometry{a4paper, mag=1000, left=25mm, right=25mm, top=0.6cm, bottom=20mm, headsep=0.7cm, headheight =15pt, footskip=1cm,twoside}
	\thispagestyle{empty}
	\noindent
	\begin{center}
		\begin{flushleft}
			\includegraphics[width=80mm]{figures/logos/logo-universite}
		\end{flushleft}
		\vspace{17mm}
		\selectlanguage{french}
		{ \fontspec{Arial}
			\fontsize{12pt}{0} {THÈSE PRÉSENTÉE} \skipmy{6mm}
			
			\fontsize{12pt}{0}   POUR OBTENIR LE GRADE DE\skipmy{7mm}
			
			\fontsize{18pt}{0}   \textbf{DOCTEUR DE} \skipmy{8mm}
			
			\fontsize{18pt}{0}\textbf{L'UNIVERSIT\'{E} DE BORDEAUX}\skipmy{22mm}
			
			\fontsize{12pt}{0} \Thesisschool \skipmy{6mm}
			
			\fontsize{12pt}{0} \Thesisspeciality \skipmy{20mm}
			
			\fontsize{14pt}{0} \Authorname \skipmy{16mm}
			
			
			\fontsize{16pt}{1}
			\textbf{\ThesistitleO}\skipmy{2mm}
			\fontsize{12pt}{0}\textbf{\Thesistitle}\skipmy{2mm}
			
			\fontsize{12pt}{0}{
				Sous la direction de~: \Director \\
				\ifthenelse{\equal{\Codirector}{No}}{\mbox{}\skipmy{26mm}}{(co-directeur~: \Codirector) \skipmy{20mm}}			
				}
			
			\begin{flushleft} { \fontspec{Arial}
					\fontsize{12pt}{0}{ Soutenue le: \Thesisdate \skipmy{10mm}
						Membres de jury :\skipmy{6mm}}
					{\fontsize{10pt}{0}
						
\Committee
						
					}}
				\end{flushleft}}
			\end{center}
			
			\newpage
			
			\restoregeometry
			
			\thispagestyle{empty}
			
			{\fontspec{Arial}
				\noindent
				\fontsize{16pt}{0} {\textbf{Titre : \ThesistitleO}}\vspace{2.2mm}\\ 
				\fontsize{16pt}{0} {\textbf{Résumé : }}\fontsize{12pt}{0} {\Resume}\vspace{2.2mm}\\
				\fontsize{16pt}{0} {\textbf{Mots clés : }\Cles} }
			\vspace{-4.5mm}
			\begin{center}
				\line(1,0){450}
			\end{center}
			\vspace{-1.5mm}
			\selectlanguage{english}
			{ \fontspec{Arial}
				\fontsize{16pt}{0} {\noindent \textbf{Title: \Thesistitle}}\vspace{2.2mm}\\
				\fontsize{16pt}{0} {\textbf{Abstract:}} \fontsize{12pt}{0} {\Abstract}\vspace{2.2mm}\\
				\fontsize{16pt}{0} {\textbf{Key words: }\Keys}
			}
			\vspace{-4.5mm}
			\begin{center}
				\line(1,0){450}
			\end{center}
			\vspace{-2.5mm}
			\selectlanguage{french}
			\begin{center}
				\fontsize{16pt}{0} {\textbf{Unité de recherche}}\\
				$[$\Labadress$]$
			\end{center}
			\selectlanguage{english}
			
		}
		%=======================================================

	