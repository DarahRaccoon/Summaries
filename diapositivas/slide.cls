\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{slide}
\LoadClass[11pt,aspectratio=169]{beamer}

\RequirePackage[spanish]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fontspec}
\setmainfont{Montserrat}

\setbeamersize{text margin left=1cm, text margin right=1cm}

\RequirePackage{multicol}
\setlength{\columnsep}{0.5cm}

\RequirePackage{colortbl}
\RequirePackage{xcolor}

\definecolor{azulU}{RGB}{0, 70, 140}  % Azul para la barra de navegación

\RequirePackage{booktabs}

\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}

\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage[para]{threeparttable}

\RequirePackage{amsmath, amssymb}
\RequirePackage{chemfig}
\RequirePackage{chemobabel}
\RequirePackage{tikz}

\RequirePackage{listings}

\RequirePackage{hyperref}

\RequirePackage{appendixnumberbeamer}

\bibliographystyle{apalike}

\RequirePackage{lipsum}

% --- Comando para diapositiva de título ---

\newcommand{\Portada}[1][]{
    {
    \usebackgroundtemplate{%
        \begin{tikzpicture}[remember picture, overlay]
            \node[inner sep=0] at (current page.center) {%
                \includegraphics[width=\paperwidth]{portada.jpg}%
            };
            \fill[black, opacity=0.5] (current page.south west) rectangle (current page.north east);
            \node[anchor=north west, inner sep=0, xshift=1cm, yshift=-0.75cm]
                  at (current page.north west) {%
                \includegraphics[width=2.5cm]{../logo_upsin.png}%
            };
        \end{tikzpicture}%
    }
    \begin{frame}[plain]
        \vspace*{0.75\textheight}
        \begin{beamercolorbox}[wd=0.7\paperwidth, leftskip=0.25cm]{title}%
            {\usebeamerfont{title}\color{white}\Huge{\inserttitle}}\\[0.25cm]
            {\usebeamerfont{institute}\color{white}\large{\insertinstitute}}\\
        \end{beamercolorbox}
    \end{frame}
    }
}

% --- Comando para índice ---

\newcommand{\Indice}{
    \begin{frame}{Contenidos}
        \begin{multicols}{2}
        \tableofcontents
        \end{multicols}
    \end{frame}
}

% --- Elementos varios ---

\setbeamerfont{frametitle}{size=\Large, series=\bfseries}

\setbeamertemplate{page number in head/foot}[totalframenumber]

\setbeamertemplate{caption}[numbered]
\setbeamertemplate{blocks}[rectangles]
\setbeamertemplate{items}[circle]
\setbeamertemplate{sections/subsections in toc}[circle]

% --- Encabezado ---

\setbeamercolor{section in head/foot}{fg=white, bg=azulU}
\setbeamercolor{subsection in head/foot}{fg=white, bg=azulU!80!black}

\setbeamertemplate{headline}{
    \leavevmode%
    \begin{beamercolorbox}[wd=\paperwidth,ht=5ex,dp=2.5ex]{section in head/foot}%
        \hspace*{2.5ex}% <--- Margen izquierdo fijo
        \small{
        \textbf{\insertsectionhead}%
        \ifx\insertsubsectionhead\empty
        \else
            : \insertsubsectionhead
        \fi
        \hfill
        \hspace*{2.5ex}%
        }
    \end{beamercolorbox}%
}

% --- Pie de página ---

\setbeamertemplate{footline}{
    \hspace{2mm}
    \usebeamerfont{page number in head/foot}
    \insertframenumber/\inserttotalframenumber
    \vspace{2mm}
}

\beamertemplatenavigationsymbolsempty

\endinput