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
% \RequirePackage{array}
% % Needed to handle list environment
% \RequirePackage{enumitem}
% % Needed to handle text alignment
% \RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% % Needed to manage colors
% \RequirePackage{xcolor}
% % Needed to use \ifxetex-\else-\fi statement
% \RequirePackage{ifxetex}
% % Needed to use \if-\then-\else statement
% \RequirePackage{xifthen}
% % Needed to use a toolbox of programming tools
% \RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
% \RequirePackage{setspace}
% Needed to manage fonts
% \RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
% Needed to deal hyperlink
% \RequirePackage[hidelinks,unicode]{hyperref}
% \hypersetup{%
%   pdftitle={},
%   pdfauthor={},
%   pdfsubject={},
%   pdfkeywords={}
% }

% Page Layout
% Set margins easily
\geometry{margin=1in}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}

% Color definitions
% \definecolor{date}{HTML}{666666}
% \definecolor{primary}{HTML}{2b2b2b}
% \definecolor{headings}{HTML}{6A6A6A}
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
% \titleformat{\section}{\color{headings}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Commands

% For elements of entry
% \newcommand*{\entrytitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
% \newcommand*{\entrypositionstyle}[1]{{\fontsize{8pt}{1em}\bodyfont\scshape\color{graytext} #1}}
% \newcommand*{\entrydatestyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
% \newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
% \newcommand*{\descriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% % Define an entry of cv information
% % Usage: \cventry{<position>}{<title>}{<location>}{<date>}{<description>}
% \newcommand*{\cventry}[5]{%
%   \vspace{-2.0mm}
%   \setlength\tabcolsep{0pt}
%   \setlength{\extrarowheight}{0pt}
%   \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
%     \ifempty{#2#3}
%       {\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
%       {\entrytitlestyle{#2} & \entrylocationstyle{#3} \\
%       \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
%     \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}}
%   \end{tabular*}%
% }