---
title: "LaTeX Tutorial"
custom_title: yes
layout: sectioned
---

# {% include latex %} Tutorial

[« Author Information](..)

- [Download PDF](tutorial.pdf)
- [Source](tutorial.tex)

<!--section-->

{% highlight TeX %}{% raw %}
\title{My Amazing Textbook Section}
\author{Anne Author}
\maketitle

\section{A section}
\subsection{A subsection}

A \keyword{keyword}.
\emph{Emphasis}.
Inline math: $3 + 4 = 7$.

\begin{popquiz}[label=pop:tut:addition]
  What is $3+4$?
\solution
  $7$.
\end{popquiz}

% a comment

\begin{itemize}
    \item Don't adjust spacing, figure placement, or other typographic tweaks.
          These will change significantly in the final version.
    \item Use ``quotes'' `properly'. I.e.\ \verb|``quotes'' `properly'|.
    \item `Escape' spaces after abbreviations such as e.g.\ and i.e.: \verb|e.g.\ and i.e.\ |.
          This stops \LaTeX\ thinking the sentence has finished.
    \item Keep your \LaTeX\ simple, preferring the macros used in this tutorial.
    \item If you want to use another macro or environment, please contact your editor in the first instance who will coordinate with the infrastructure lead\footnote{William Earley}.
    \item Use \verb|\textrm| or \verb|\mathrm| to put text/words in math.
          For example, $k_{\textrm{cat}}$ is typeset as \verb|$k_{\textrm{cat}}$|.
    \item Prefer `semantic' macros, e.g.\ \verb|\Pr|: $\Pr(\textrm{raining} | \textrm{UK}) = 1$.
          This is so we can easily change the way these are typeset later on.
\end{itemize}

\begin{enumerate}
    \item A
    \begin{enumerate}
        \item numbered
    \end{enumerate}
    \item list
\end{enumerate}

\subsection{Molecular programming}

\keyword{Molecular programming} arguably started when \textcite{adleman-hampath} solved the Hamiltonian path problem.
Later, approaches such as the \keyword{Tile Assembly Model}~\cite{winfree-tam} were developed.
See \Cref{dfn:tut:aomp} to find out what AoMP is.

Use \verb|\Cref{label}| to reference something (it will automatically put in what object it is, e.g.\ Definition 1.1 above).
You can separate multiple labels in with commas, e.g.\ \Cref{pop:tut:addition,pop:tut:riemann}.

\begin{definition}[label=dfn:tut:aomp]{The Art of Molecular Programming}
The principles of molecular programming are currently scattered across thousands of papers, which presents a barrier for new researchers entering the field.
The Art of Molecular Programming is a grassroots community initiative to collect these principles in one location, providing tutorial lessons to guide students' learning, and presenting a collective vision on where the field is heading.
\end{definition}

Your labels should be `namespaced': for the tutorial, the namespace is \verb|tut|, so we put \verb|:tut:| in the label somewhere.
For example, \Cref{dfn:tut:aomp} has label \verb|dfn:tut:aomp|.
You should also prefix your labels appropriately.
\verb|eqn| for equations, \verb|dfn| for definitions, \verb|fig| for figures, \verb|tbl| for tables, \verb|pop| for pop quizzes, \verb|prob| for problems, etc.
For your section, you should be assigned a namespace.
The point of this is to avoid conflicts between labels in different sections.

\section{My second section}

% a popquiz without a solution
% use danger, Danger, or DANGER to indicate progressively harder problems
\begin{popquiz}[label=pop:tut:riemann,no solution,DANGER]
  Is the Riemann hypothesis true?
\end{popquiz}

Prefer the \verb|align| and \verb|align*| environments for large math blocks.
Use the starred version unless you are going to label and reference an equation.
The quadratic formula is
\begin{align*}
    x &= \frac{-b \pm \sqrt{b^2-4ac}}{2a}.
\end{align*}
Euler's identity is
\begin{align}
    1 + e^{i\pi} &= 0.
    \label{eqn:tut:euler}
\end{align}
Recall Euler's identity, \Cref{eqn:tut:euler}.
Consider the functional equation
\begin{align}
    \tag{\ast}
    W &= 1 + pxtW + q\bar x t(W - W|_{x=0});
    \label{eqn:tut:func}
\end{align}
\Cref{eqn:tut:func} represents the generating function for a biased random 1D walk.

\section{Boxes}

\begin{theorem}{Fermat's Last Theorem}
  There are no positive integers satisfying $a^n + b^n = c^n$ for $n>2$.
\proof
  The proof is too large to fit in this margin.
\end{theorem}

\begin{breakout}[label=box:tut:gcd]{Euclid's Algorithm}
  \begin{algorithmic}
    \State $a,b \gets$ the inputs
    \While{$a \ne b$}
      \If{$a > b$}
        \State $a \gets a - b$ \Comment{if $g|a$ and $g|b$, then $g|a-b$}
      \Else
        \State $b \gets b - a$
      \EndIf
    \EndWhile
    \State \Return $a$
  \end{algorithmic}
\tcblower
  This is Euclid's original algorithm to compute the \keyword{Greatest Common Divisor} of two numbers, $a$ and $b$.
  It requires only subtraction.
  GCD can be computed more efficiently using integer division with remainder.
\end{breakout}

\begin{figure}[label=fig:tut:myfigure,credit={Credit: Anastasia Ershova}]{An example CRN}
  \includegraphics[width=0.5\linewidth]{crn_illustration.pdf}
\end{figure}

\begin{table}[label=tbl:tut:mytable]{Truth table for \texttt{NAND}}
  \begin{tabular}{cc|c}
    $p$ & $q$ & $\overline{pq}$ \\ \hline
    0 & 0 & 1 \\
    0 & 1 & 1 \\
    1 & 0 & 1 \\
    1 & 1 & 0 \\
  \end{tabular}
\end{table}

\section{Packages}

You may find the documentation for these packages helpful:
\begin{itemize}
    \item[\texttt{physics}] for formatting differentials and derivatives.
    
        Examples:
        \begin{align*}
          \dv{y}{x} &= 3x + 4, \\
          \dv[2]{y}{x} &= 3, \\
          y &= \int^x (3x'+4) \dd{x'}, \\
          \pdv[3]{f}{x} &= g(x,y,z).
        \end{align*}

    \item[\texttt{siunitx}] for formatting numbers and quantities with units.
    
        Examples: $\hbar=\SI{1.054572e-34}{\joule\per\second}$, water has triple point \SI{273.16}{\kelvin} and \SI{611.657}{\pascal}.
        Avogadro's constant is \num{6.022e23}.
        At sea level, water is liquid from \SIrange{0}{100}{\celsius}.
    
    \item[\texttt{mhchem}] for formatting chemical species and equations.
    
        Examples: \ce{H2O}, \ce{Al2O3}, \ce{X}, \ce{X_{$i$}}, \ce{A + B -> C}, \ce{C + D <=>[$k_1$][$k_2$] E + F <- G}.
        \begin{align*}
            \ce{$\sum_i \alpha_i$ X_{$i$} &-> $\sum_i \beta_i$ Y_{$i$}} \\
            \ce{Water + Carbon Dioxide &<<=> Glucose + Oxygen}
        \end{align*}
        
    \item[\texttt{algorithmicx}] for formatting algorithmic pseudocode. See \Cref{box:tut:gcd} for an example.
\end{itemize}


\section{Problems}

\begin{problem}[quantitative,label=prob:tut:sine]
  Plot $\sin x$.
\end{problem}

\begin{problem}[advanced,label=prob:tut:pi]
  Write a program to compute a billion digits of $\pi$.
\end{problem}

\begin{bibitems}
  \entry{adleman-hampath}{10.1126/science.7973651}{Adleman, Leonard M. "Molecular computation of solutions to combinatorial problems." Science 266.5187 (1994): 1021-1024.}
  \entry{winfree-tam}{10.1038/28998}{Winfree, Erik, et al. "Design and self-assembly of two-dimensional DNA crystals." Nature 394.6693 (1998): 539-544.}
\end{bibitems}

\begin{further}
  \entry{adleman2+}{10.1126/science.7973651}{Adleman, Leonard M. "Molecular computation of solutions to combinatorial problems." Science 266.5187 (1994): 1021-1024.}{Read this to find out more about the origins of dna computing.}
  \entry{winfree2+}{10.1038/28998}{Winfree, Erik, et al. "Design and self-assembly of two-dimensional DNA crystals." Nature 394.6693 (1998): 539-544.}{Read this to find out more about tile assembly.}
\end{further}
{% endraw %}{% endhighlight %}