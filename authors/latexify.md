---
title: "LaTeX Conversion"
custom_title: yes
layout: sectioned
---

# {% include latex %} Conversion Guide

[« Author Information](..)

1. **Set up a new overleaf project**: [Find the `[tag]` for the section](toc) and let Hannah Earley know the tag and the overleaf emails of anyone who wants access
2. **Get familiar with our LaTeX guidelines**:
    - The guidelines are [here]({{ "/files/aomp/guidelines/latex.pdf" | relative_url }})
    - A tutorial on using our {% include latex %} class is [here](examples/tutorial)
        - The tutorial is also visible in every new overleaf project
        - **N.B.**! Some {% include latex %} looks different to what you might be accustomed too, particularly figure and table environments!
3. **Copy over the text and document structure**
    1. Document structure: sections (`\section`, `\subsection`, etc), and put in a _placeholder_ for any figures and tables
        - By placeholder, I mean that you don't need to fill in the caption or image for now
        - Don't try to place everything (e.g. figures) perfectly. Page layout is likely to change significantly in the final version.
    2. Copy over the text, being careful to pay attention to formatting. Remember, bold keywords should use `\keyword{}` and emphasis/italics should use `\emph{}`
        - Now is a good time to check for consistency with our style guidelines on this
    3. Watch out for cross-references (e.g. Section 3, Figure 5, Equation 4.2)
        - Sections and equations should be labelled with `\label{}`. Figures and tables should be referenced like `\begin{figure}[label=]`.
        - Labels should be referenced with `\Cref{}`
        - Labels should be written `<tag>:<type>:<descriptor>`. For example, a section in the Molecular Self-Assembly chapter (7) might have a label `SelfAssembly:sec:origami`
            - This is really important, as it will prevent clashes when we combine all the chapters later!
            - Label 'types' might be `sec`, `fig`, `eqn`, `tbl`, etc
4. **Insert figures and data**
    1. Obtain a copy of the originals, and upload them to the overleaf project
    2. Use something like `\includegraphics[width=4.5in]{filename.ext}`
        - Remember the graphics guidelines, which indicate appropriate figure sizes!
5. **References**
      - Follow the instructions in the tutorial
      - You don't need to be too careful with this right now, just write `\entry{label}{doi}{description}` so that there's enough information to find the paper later when we consolidate references
