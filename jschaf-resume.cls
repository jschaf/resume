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

\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage[quiet]{fontspec}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{parskip}
\RequirePackage{ragged2e}
\RequirePackage{tabularx}
\RequirePackage{titlesec}
\RequirePackage[hyperref]{xcolor}

% Page Layout
\geometry{margin=1in}
\setlength{\parindent}{0pt}
\setlist[itemize]{leftmargin=*}


% Header & Footer
\fancyhfoffset{0em}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\pagestyle{fancy}


% Color definitions
% \definecolor{date}{HTML}{666666}
% \definecolor{primary}{HTML}{2b2b2b}
\colorlet{urlcolor}{blue!40!black}
\colorlet{headings}{red!40!black}

% \definecolor{subheadings}{HTML}{333333}

% Headings
\titlespacing\section{0pt}{16pt}{0pt}

\titleformat{\section}{\fontfamily{\sfdefault}\color{headings}\fontsize{18pt}{24pt}\selectfont \raggedright}{}{0em}{}


% Commands

% Work Entries
\newcommand{\workheading}[3]{%
{%
  \vspace{12pt}
  \fontsize{13pt}{16pt}\selectfont%
  \begin{tabularx}{\columnwidth}{@{}p{1in}@{}Xr@{}}
    #1 & \textit{#2} & #3 \\
  \end{tabularx}%
  \vspace*{-4pt}%
}}

\newenvironment{workitems}
  {\itemize[label={},labelsep=0pt]
   \let\origmakelabel\makelabel
   \renewcommand{\makelabel}[1]{\origmakelabel{##1}}}
  {\enditemize}


\newcommand{\educationentry}[2]{%
  \begin{tabularx}{\columnwidth}{@{}Xr@{}}
    \textbf{#1} & #2 \\
  \end{tabularx}}