\ProvidesClass{jschaf-resume}[2017/07/02 Resume class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports

% Needed to make fixed length table
% % Needed to handle list environment
% \RequirePackage{enumitem}
% % Needed to handle text alignment
% % Needed to manage colors
% % Needed to use \ifxetex-\else-\fi statement
% \RequirePackage{ifxetex}
% % Needed to use \if-\then-\else statement
% \RequirePackage{xifthen}
% % Needed to use a toolbox of programming tools
% \RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
% \RequirePackage{setspace}
% Needed to manage fonts
% To support LaTeX quoting style
% Needed to deal hyperlink

\RequirePackage[pdftex, pdfusetitle,colorlinks=false,pdfborder={0 0 0}]{hyperref}
\RequirePackage[quiet]{fontspec}
\RequirePackage{array}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{parskip}
\RequirePackage{ragged2e}
\RequirePackage{tabularx}
\RequirePackage{titlesec}
\RequirePackage{xcolor}

% Page Layout
\geometry{margin=1in}
\setlength{\parindent}{0pt}

% Header & Footer
\fancyhfoffset{0em}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\pagestyle{fancy}

% Fonts
\setromanfont[Ligatures=TeX,Numbers=OldStyle]{TeX Gyre Pagella}
\setsansfont[Ligatures=TeX,Scale=MatchLowercase]{TeX Gyre Heros}
\setmonofont[Scale=MatchLowercase]{Inconsolata}

% Color definitions
% \definecolor{date}{HTML}{666666}
% \definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
% \definecolor{subheadings}{HTML}{333333}

% Date command
% \setlength{\TPHorizModule}{1mm}
% \setlength{\TPVertModule}{1mm}
% \textblockorigin{0mm}{5mm}
% \newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
% \color{date}
% Last Updated on
% \today
% \end{textblock}\normalfont}

% Headings
\titleformat{\section}{\color{headings}\fontsize{16pt}{24pt}\selectfont \raggedright}{} {0em}{}


% Commands

% Superscripts, 1st, 2nd, etc...
\newcommand{\st}{\textsuperscript{st}}
\newcommand{\nd}{\textsuperscript{nd}}
\newcommand{\rd}{\textsuperscript{rd}}
\newcommand{\thh}{\textsuperscript{th}}


% CV Entries
\newcommand{\workentry}[3]{%
  \begin{tabularx}{\columnwidth}{@{}p{0.8in}@{}Xr@{}}
    \textbf{#1} & #2 & #3 \\
  \end{tabularx}}


\newcommand{\educationentry}[2]{%
  \begin{tabularx}{\columnwidth}{@{}Xr@{}}
    \textbf{#1} & #2 \\
  \end{tabularx}}