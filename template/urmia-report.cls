\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{urmia-report}[2025/11/22 Minimal Clean Version]

\LoadClass[a4paper,12pt]{report}

\RequirePackage{xepersian}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{xurl}

\settextfont[Scale=1.2]{B Nazanin}
\defpersianfont\godname[Scale=2.5]{B Nazanin Bold}

\geometry{top=3cm,bottom=3cm,left=3.5cm,right=2.5cm}
\onehalfspacing
\setlength{\parindent}{0pt}

%سربرگ
\setlength{\headheight}{45pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[width=1.3cm]{logo.png}}
\fancyhead[R]{\leftmark}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}

% ------------------ همه section* ها وسط چین شوند ------------------
\usepackage{titlesec}

\titleformat{\section}[block]
  {\centering\Large\bfseries}   % سبک عنوان
  {}                            % شماره (چون * است خالی می‌ماند)
  {0pt}                         % فاصله
  {}
\usepackage{etoolbox}


% ------------------ استایل فهرست مطالب ------------------
\RequirePackage{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=blue,
    citecolor=blue,
    filecolor=blue,
    pdfborder={0 0 0} % این خط تمام کادرهای قرمز را حذف می‌کند
}

% ------------------ وسط‌چین کردن عنوان فهرست مطالب ------------------
\usepackage{tocloft}
\renewcommand{\cfttoctitlefont}{\hfill\Huge\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}

% ----- دستور جدید به جای section* -----
\newcommand{\newsection}[1]{%
  \phantomsection%  مقصد صحیح برای لینک
  \section*{#1}%   عنوان بدون شماره
  \addcontentsline{toc}{section}{#1}% ورود به فهرست مطالب
  \markboth{#1}{#1}% سربرگ
}

\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}


% محیط حرفه‌ای فهرست منابع  

\newenvironment{sources}{

    \begin{flushright}
    \begin{enumerate}
        \setlength{\itemsep}{1.0\baselineskip}
}{
    \end{enumerate}
    \end{flushright}
}

\endinput
