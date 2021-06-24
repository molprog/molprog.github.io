---
title: "Foundations: Chemical Reaction Networks"
layout: sectioned
---

[< Author Information](../guidelines)

### [Download PDF](crn.pdf)

<!--section-->

## Outline

<!--section-->

### [Source](crn.tex)

{% highlight TeX %}{% raw %}
% Author: William Poole

\title{Foundations: Chemical Reaction Networks}
\author{William Poole}

\maketitle
\label{sec:crn}
\section{Chemical Reaction Networks Model Interactions between Discrete Entities}

Scientists and engineers use mathematical models in order to quantitatively describe and reason about the behavior of complex systems involving many interacting parts. Indeed, modeling is in many ways its own discipline with a variety of principles, nuances, and methods. To the molecular programmer, modeling provides a way to translate understanding and hypotheses about how a system functions into mathematical expressions which can then be compared to experiments, analyzed theoretically, or optimized computationally. 

One fundamental model in molecular programming is a \keyword{chemical reaction network} (CRN). CRNs model the interactions between a finite set of species which interact via a finite set of reactions converting one multiset of species to another. Historically, as the name CRN suggests, these systems were invented to study chemical reactions where species are molecules made up of atoms. For example, the burning of hydrogen can be written as
%
\begin{align*}
    \ce{2H2 + O2 -> 2H2O}.
\end{align*}
%
Here, two hydrogen gas molecules come together with one oxygen molecule in order to produce two water molecules. This example exposes the implicit assumptions of the CRN model. Species in the model are assumed to be \keyword{well-mixed}, meaning the hydrogen and oxygen gasses are evenly and constantly stirred together. Spatial structures such as flames, heat transfer, and diffusion are neglected. Similarly, internal structure of each species, such as the internal energy of each hydrogen and oxygen atom, is assumed to be homogeneous.
%
\begin{figure}[label=fig:crn:illustration,credit={Anastasia Ershova}]{%
    Chemical reaction networks model interactions and transitions between discrete entities as illustrated via the CRN \ce{A + C <=> D -> B + C}. \ce{A}: red, \ce{B}: green, \ce{C}: blue, \ce{D}: red \& blue.}
    \includegraphics[width=.5\textwidth]{crn_illustration.pdf}
\end{figure}
%
More recently, scientists have used CRNs to model many systems beyond well-mixed atoms and molecules. Species can also be abstract entities where the specific atomic structure is obscured, for example rabbits:
%
\begin{align*}
    \ce{Black Rabbit + White Rabbit &-> Black Rabbit + White Rabbit + 5 Spotted Rabbits}.
\end{align*}
%
Importantly, CRNs typically involve multiple coupled reactions. For example, the activity of an enzyme \ce{C} binding to a substrate \ce{A} to form a complex \ce{D} and then catalytically converting \ce{A} to \ce{B} illustrated in figure \ref{fig:crn:illustration}. These interactions can be represented via three reactions:
%
\begin{align*}
    \label{eq:crn:mm-catalysis}
    \ce{A + C &->[$k_b$] D}, &
    \ce{D &->[$k_u$] A + C}, &
    \ce{D &->[$k_{\textrm{cat.}}$] B + C}.
\end{align*}
%
These three reactions can be written more succinctly by noticing that the first two reactions are reverses of each other:
\begin{align*}
    \ce{A + C &<=>[$k_b$][$k_u$] D ->[$k_{\textrm{cat.}}$] B + C}.
\end{align*}
Here, we have added rates, $k_u$, $k_b$, and $k_{\textrm{cat.}}$ to the reactions to denote how fast they occur.
%
Formally, a CRN is written as a set of species $\{S_i\}$ each with amount $s_i$ and a set of reactions of the form:
\begin{equation}
    \ce{ $\sum_i I_{i, r}$ S_{$i$} ->[$\rho_r(s)$] $\sum_i O_{i, r}$ S_i.}
\end{equation}
where $I_{i, r}$ and $O_{i, r}$ are non-negative integers describing the number of species $S_i$ that are inputs and outputs to the reaction $r$, respectively. The function $\rho_r(s) \geq 0$ is the rate at which each reaction occurs, also known as a \textbf{propensity}. Here $s$ is a vector of the amounts of all the species and is also referred to as the \textbf{state} of the system. Sometimes, it is convenient to consider the net change of species that occur in each reaction as a matrix, called the \textbf{stoichiometric matrix}:
\begin{equation}
    \Delta = O - I
\end{equation}
Finally, in this text, when only a rate constant $k_r$ is given for a reaction, the propensity is by convention assumed to be \textbf{mass action}:
\begin{align}
\rho^{\textrm{det}}_r(s) &= k_r \prod_i s_i^{I_{i, r}} &
      \rho^{\textrm{stoch}}_r(s) &=
        \frac{k_r}{V^{|I_r|-1}}
        \prod_i \frac{s_i!}{(s_i - I_r^i)!}.
\end{align}
Here, $\prod$ is the product operator, $V$ is the volume of the CRN. The two different forms of this function depend on whether CRNs are simulated stochastically or deterministically, which will be elaborated on the proceeding sections. Mass action propensities are rooted in the physics of ideal gasses and ideal solutions. For example, consider the stochastic propensity for the binding of $A$ to $B$:
\begin{align*}
    \ce{A + C &->[k_b] D} & \rho^{\textrm{stoch}}(s) &= \frac{k_b}{V}ab.
\end{align*}
Intuitively, the stochastic propensity means that the probability of a molecule $A$ colliding with a molecule $B$ is proportional to the number of molecules $a$ times the number of molecules $b$ divided by the total volume $V$ that any two molecules need to search, on average, in order to bump into each other. Then, once the molecules collide, they bind together at some rate $k_b$. In statistical physics, this is analogous to the collisions that occur between particles in an ideal gas \cite{}. However, most CRNs in this book model chemicals dissolved in aqueous solution. An ideal solution is extension of the physics of ideal gasses to include a non-reactive solvent which keeps the total volume and pressure of the system constant such that the non-solvent species obey the same physics as an ideal gas \cite{}. The deterministic mass action propensity is derived as an approximation of the stochastic propensity in very large volumes with very large numbers of molecules \cite{}. Other propensities may also used to model more complex phenomenological behavior; in general, these can be thought of as simplifications or reductions of more complex mass action systems \cite{}. This idea is explored further in \Cref{prob:crn:hill-fn}.

\begin{table}[label=tbl:crn:motifs]{
    CRN motifs used in many processes common to molecular programming.
    These reactions are frequently combined together to represent diverse molecular processes.
    Note, however, that these motifs are just a small subset of the possible reactions molecular programmers want to consider.}
  \small
  \begin{tabular}{rcl}
    \textbf{Process} & \textbf{CRN} & \textbf{Description}   \\ \hline
    One Step Catalysis & \ce{A + C -> B + C} & \ce{C} converts \ce{A} to \ce{B} in one step. \\
    Molecular Binding & \ce{A + B <=> C} & \ce{A} and \ce{B} reversible form a complex \ce{C}. \\
    Michaelis-Menten Catalysis & \ce{A + C <=> D -> B} & \ce{C} binds with \ce{A} before converting it to \ce{B}. \\
    Conformation Changes & \ce{S1 <=> S2 <=> S3} & \ce{S} reversibly changes between three conformations. \\
    Diffusion Between Compartments & \ce{X_{in} <=> X_{out}} & \ce{X} diffuses between the inside an outside of a compartment. \\
    Amplification & \ce{S + A -> 2S + A} & \ce{A} exponentially amplifies \ce{S}. \\
  \end{tabular}
\end{table}

By combining abstract species with highly customizable interactions, CRNs embody a general framework that has been studied in diverse fields ranging from physics \cite{} to chemistry \cite{} to biology \cite{} to ecology \cite{} to computer science \cite{} to mathematics \cite{}. Molecular programmers use CRNs because they succinctly represent interactions between elements of a system at various levels of abstraction: atoms, molecular structures, cells, or even entire organisms can be modeled using the same formalism. \Cref{tbl:crn:motifs} shows some common CRN motifs that represent processes relevant to molecular programming. In particular, note that the well-mixed assumption still allows for discrete conformations and limited spatial structure. Indeed, CRNs excel at modeling finite systems where all the species and reactions can be easily enumerated. This makes CRNs numerically tractable meaning that these models to be easily simulated on a computer. However, the finite nature of CRNs makes them less suited for modeling continuous systems such as the 3D arrangement of atoms including molecular structures and continuous motion in space.



In the following sections, we will discuss two different ways simulate CRNs: stochastic and deterministic semantics. These sections assume some familiarity with ordinary differential equations, which are briefly explained in box \ref{box:dynamics}

\begin{popquiz}[label=pq:crn:modelling]
  Identify whether each of the following situations can be modeled using a CRN. Why or why not?
  \begin{enumerate}
    \item Cars driving on a freeway. 
    \item The entry and replication of a virus in a cell.
    \item People moving between different rooms at a party.
    \item Cooking a scrambled egg. 
    \item A seed growing into a flower. 
    \item All of the ways to put 10 lego blocks together. 
  \end{enumerate}
\solution
  \begin{enumerate}
    \item No, because cars move in continuous space. However, CRNs could model how quickly cars go from one city to another.
    \item Yes, because a virus consists of discrete molecules and the entry to a cell and replication can be thought of as a series of discrete binding, transcription, translation, and self-assembly reactions.
    \item Yes, because there are a finite number of people in a finite number of rooms.
    \item No, this process is not well mixed and involves phase transition as the egg goes from liquid to solid.
    \item No, the spatial structure of a flower exists in continuous space and is subject to mechanical forces such as pressure.
    \item Yes, although there may be many possible structures made from 10 lego bricks, this is still a finite number and some  structures can be built from other structures.
  \end{enumerate}
\end{popquiz}

\begin{breakout}[label=box:dynamics]{Ordinary Differential Equations Model a System's Dynamics}
Molecular programs often consist of systems that change over time. Such programs may respond to user inputs, constantly adapt to environmental cues, and/or carry out a series of steps in order to produce an output. The way a system changes over time is called the \keyword{dynamics} of the system. In order to successfully understand and program the dynamics of molecular systems, molecular programmers make use of a variety of mathematical models and techniques. At the heart of many of these techniques are differential equations,
%
\begin{align*}
    \dv{x}{t} &= f(x, t).
\end{align*}
%
This equation is incredibly general and describes how the state of the system, described by a continuous variable $x$, changes in time, $t$, according to a bounded function $f$. When $x$ is a scalar or a finite vector, this equation is called an \textbf{ordinary differential equation} (ODE). Integrating the right hand side from some initial condition $x(t_0)$ at $t_0$ to a final time $t$ produces a solution $x(t; x(t_0))$ to the ODE which describes how $x$ changes in time given initial condition $x(t_0)$:
\begin{align*}
    x(t; x(t_0)) &= \int_{t_0}^{t} f(x, t') \dd{t'}.
\end{align*}
Typically, this equation is solved numerically using a computer although in some special cases it can be solved analytically. Choosing the state $x$ and function $f$ in order to understand and program molecular behavior will be a recurring theme in this textbook.
In general, allowing $f$ to be \emph{any} function is unnecessary and instead we restrict ourselves to specific models. In some cases, $f$ will be rooted in physical descriptions of how molecules behave. In other cases, $f$ will describe the phenomenological or idealized behavior we wish to program into a system. 
\end{breakout}

\section{Stochastic Chemical Reaction Networks}

The stochastic description of CRNs is deeply rooted in the physics of interacting molecules. \textbf{Stochastic} is a word phycists and mathematicians use to refer to mathematically quantifiable randomness. Molecules are discrete, finite, and countable, meaning that the amount of any molecule will always be a non-negative integer. You cannot have a quarter of a molecule, at least not without breaking the molecule into some different kind of molecule! Stochastic CRNs describe how the \keyword{counts}, $s_i$, of each molecule $S_i$ changes in time. As these molecules interact by crashing into each other and participating in reactions, discrete sets of molecules are interconverted. If the exact positions and velocities of every individual molecule were known, the order of collisions would be predetermined. However, the well-mixed assumption of CRNs implicitly neglects the detailed positions of individual molecules. Instead, molecular collisions are modeled as random events between uniformly distributed species in a volume $V$ which occur at random intervals and cause reactions to occur proportionally to that reaction's propensity \cite{}. Due to the fact that the waiting time between reactions as well as which reaction occurs are stochastic, this process is modeled using what mathematicians call a time Markov chain (also called a Markov jump process) which will be illustrated intuitively via an example \cite{}.  

\begin{figure}[label=fig:crn:det-and-stoch-dynamics,credit={Image Credit: William Poole}]{%
    Dynamics of the CRN \ce{A <=> 2B}[h!]
    Left: Deterministic Dynamics.
    Right: Stochastic Dynamics showing 20 trajectories (blue and red) and state probabilities (gray).}
  \includegraphics[width=\linewidth]{det_and_stoch_dynamics.pdf}
\end{figure}

Consider dynamics of a CRN which reversibly converts one molecule \ce{A} into two molecules of \ce{B}:
\begin{align}
    \label{eq:crn:example-crn}
    \ce{A &<=>[$k_1$][$k_2$] 2B}
\end{align}
Denote the state of the system $s = (a, b)$. The forward reaction can written in terms of the state of the system $s \to s + (-1, 2)$ meaning one molecule of $A$ is consumed and two molecules of $B$ are created. Similarly, the reverse can be written as $s \to s + (1, -2)$. If the system starts in any state $s$, after some random time, $\tau$, one of these reactions will occur. The random time $\tau \sim \mathrm{Exponential}(1/\sum_r \rho_r(s))$, meaning $\tau$ is sampled from an exponential distribution with mean of one divided by the sum of the propensities. Intuitively, this scaling makes sense; the larger the reaction propensities, the less time there is between reactions. Similarly, the probability of any given reaction occurring within an arbitrary window of time is proportional to its propensity, $\Pr(\textrm{reaction}~i~\textrm{fires}) = \frac{\rho_i(s)}{\sum_j \rho_j(s)}$. After a reaction occurs, the system will be in a new state $s'$ and the process will repeat. This results in each state having a probability $\Pr(s, t)$ which in general depends on the initial condition $s(0)$ and changes in time as reactions occur. \Cref{fig:crn:det-and-stoch-dynamics} (left) illustrate stochastic trajectories of this CRN and the dynamics of the probability vector in time. \Cref{box:crn:gillespie-ssa} generalizes this description of the dynamics of a stochastic CRN into an algorithm called the Gillespie stochastic simulation algorithm (SSA).

An alternative method for understanding the dynamics of a stochastic CRN is to write out an ordinary differential equation for the probability vector of each state: $\Pr(s, t)$.
This equation is called the chemical master equation (CME):
%
\begin{align}
    \tag{CME}
    \dv{\Pr(s, t)}{t} &= \sum_r [\Pr(s-\Delta_r, t) \rho_r(s - \Delta_r) - \Pr(s) \rho_r(s)].
    \label{eq:crn:cme}
\end{align}
%
This equation, although frequently long and complicated, is easy to understand. For each state $s$ and each reaction $r$ there is incoming probability from the state $s-\Delta_r$ at a rate $\rho_r(s-\Delta_r)$ and outgoing probability from $s$ at rate $\rho_r(s)$. For example, the CME for the CRN (\ref{eq:crn:example-crn}) is given by:
%
{\small\begin{align*}
  \smash{\dv{\Pr(s, t)}{t}}
    &= \Pr(s {+} (1, -2), t) \rho_1(s {+} (1, -2)) 
     {+} \Pr(s {+} (-1, 2), t) \rho_2(s {+} (-1, 2))
     {-} \Pr(s, t)(\rho_1(s) {+} \rho_2(s)) \\
    &= \Pr((a{+}1, b{-}2), t) k_1 (a{+}1)
    {+} \Pr((a{-}1, b{+}2), t) k_2 (b{+}2)(b{+}1)
    {-} \Pr((a, b), t)(k_1 a {+} k_2 b (b{-}1)).
\end{align*}}
%
Here, the first two terms represent incoming probability into the state $s = (a, b)$ and the third term represent outgoing probability from the state $s$. Notice that this ODE has a probability for every possible value of $a$ and $b$. Indeed, you should convince yourself that the total number of states is in fact $|\Gamma| = a(0) + \lfloor \frac{b(0)}{2} \rfloor.$ In general, the number of states, and hence the number of probabilities in the chemical master equation, may grow exponentially in the number of species or even be infinite. Very large or infinite state spaces make the CME description of a stochastic CRN difficult to integrate numerically, so for many applications stochastic CRNs are simulated many times using SSA and probability distributions are empirically approximated by this ensemble of trajectories.
%
\begin{breakout}[label=box:crn:gillespie-ssa]{Gillespie Stochastic Simulation Algorithm (SSA) Pseudocode}
\begin{algorithmic}%[1]
  \State $s \gets$ initial state
  \State $t \gets$ initial time
  \While{$ t \leq t_{\textrm{max}} $}
    \State $\rho_r \gets \rho_r(s)$ \Comment{compute each propensity function}
    \State $\lambda \gets \sum_r \rho_r$ \Comment{compute total reaction rate}
    \State $\tau \sim \mathrm{Exponential}(1/\lambda)$ \Comment{sample waiting time}
    \State $r \sim \mathrm{Categorical}(\rho_r/\lambda)$ \Comment{sample a reaction, $\mathbb{P}(r)\propto\rho_r$}
    \State $s \gets s + \Delta_r$ \Comment{update the state}
    \State $t \gets t + \tau$ \Comment{advance the time}
  \EndWhile
\end{algorithmic}
\tcblower
Notes:
  Sampling an exponential distribution with parameter $\frac{1}{\lambda}$ can be done by sampling a uniformly distributed random number, $u\in[0,1]$, and computing $-\frac{1}{\lambda}\log u$.
  Sampling a categorical distribution can be done by picking a uniformly distributed random number, $v\in[0,1]$, and finding $r$ s.t.\ $\sum_{r'=1}^{r-1} \frac{\rho_{r'}}{\lambda} < v \le \sum_{r'=1}^r \frac{\rho_{r'}}{\lambda}$.
\end{breakout}
%
\begin{popquiz}[label=pq:crn:reachability]
  Write down all the states that can be reached via any sequence of reactions by the following CRNs from the given initial condition $s(0)$. This set is called the \keyword{reachability class} and is denoted $\Gamma_{s(0)}$. For example, in the CRN  $\emptyset \xrightleftharpoons{} X$ with $x(0) = 10$ the reachability class is $\Gamma = \{0, 1, 2 ... \} = \mathbb{Z}_{\geq 0}$ (all the non-negative integers).
  \begin{enumerate}
    \item $A \xrightleftharpoons{} B$ with $a(0) = 10$ and $b(0) = 0$
    \item $X \xrightleftharpoons{} 2 Y$, $Y \xrightleftharpoons{} 2 Z$ with $x(0) = 100$ and $y(0) = z(0) = 0$.
    \item $2 A \xrightarrow{} 2 B$, $2 B \xrightarrow{} 2 C$, $2 C \xrightarrow{} 2 A$, with $a(0) = b(0) = c(0) = 1$.
  \end{enumerate}
\solution
  \begin{enumerate}
    \item $a \in \{0, 1, ..., 10\}$ with $b = 10-a$.
    \item Any non-negative integer values $(x, y, z)$ such that $x + 2y + 4 z = 100$.
    \item No reactions can fire with fewer than two inputs of a given species so $\Gamma = \{(1, 1, 1)\}$
  \end{enumerate}
\end{popquiz}
%
\section{Deterministic Chemical Reaction Networks}
%
In typical laboratory settings, it can be difficult to measure or control the precise counts of molecules.
Instead, scientists often use concentrations: the number of molecules divided by the volume in which the reaction occurs. Unlike stochastic CRNs, this dynamic description of concentrations includes no randomness in the values of $s$, hence being called deterministic. Mathematically, deterministic CRNs are an ordinary differential equation model for understanding how the concentrations of chemical species vary in time due to reactions:
%
\begin{equation*}
    \dv{s_i}{t} = \sum_r \Delta_{i, r} \rho_r(s)
\end{equation*}
%
Here, $s_i = \frac{n_i}{V}$ is the concentration of species \ce{S_{$i$}} which has $n_i$ molecules in a volume $V$. Physically, this ODE approximates the behavior of a stochastic CRN in the limit of infinite volume, $V \to \infty$, and infinite count, $n \to \infty$, allowing species to be treated as continuous concentrations instead of discrete counts \cite{}. Similar to the reachability class of a stochastic CRN, deterministic CRNs have a \textbf{stoichiometric compatibility class} $\gamma_{s(0)} = s(0) + \textrm{span}(\Delta)$. This space includes all the possible concentrations of the trajectory $s(t, s(0))$ for any positive or negative value of $t$.

Although an physical approximation, deterministic CRNs are more mathematically tractable than stochastic CRNs. Consider a CRN with $N$ species. The deterministic dynamics will be governed by an ODE with $N$ variables, one representing each species. On the other hand, the stochastic dynamics will be governed by $|\Gamma_{s(0)}|$-dimensional probability vector, where $\Gamma_{s(0)}$ is the set of all reachable states and may even be infinite in size. For example, the deterministic dynamics of the CRN (\ref{eq:crn:example-crn}) are given by just two equations:
%
\begin{align*}
    \dv{a}{t} &= k_2 b^2 - k_1 a &
    \dv{b}{t} &= k_1 a - k_2 b^2.
\end{align*}
%
Notice that this ODE is considerably simpler than the chemical master equation for the same CRN. This illustrates an important concept in molecular programming: compilation. A CRN can be viewed as an abstract specification, or programming language, which is compiled into a mathematical representation. The same set of species and reactions can be compiled into either a stochastic representation or a deterministic representation. Many of the later sections in this book will build on this general idea of molecular compilation such as examining what kinds of programs can be compiled into CRNs and compiling a specification CRN into more detailed implementation CRNs.

\begin{breakout}{When to use stochastic versus deterministic CRNs}
  Determining whether the stochastic or deterministic description of a CRN is the appropriate model for a given problem can be challenging. As a rule of thumb, if the absolute number of molecules in the system is large, the deterministic semantics is appropriate. For example, in a laboratory it is difficult to accurately pipette less than \SI{1}{\micro\liter} (\SI{e-6}{\liter}) by hand; \SI{1}{\micro\liter} of \SI{1}{\micro\Molar} (\SI{e-6}{\Molar}) solution is \num{6.022e11} molecules---so for most hand-pipetted laboratory experiments, deterministic models are probably more appropriate. However, using state of the art techniques, scientists are increasingly able to work with incredibly small volumes and hence very low molecular counts. The volume of a single eukaryotic cell is about \SI{1}{\pico\liter} (\SI{e-12}{\liter}), and of a bacterium is about \SI{1}{\femto\liter} (\SI{e-15}{\liter}). Volumes this small can also be created artificially using lithography \ref{???} or droplets \ref{???}. When working with small molecule counts, noise may become important to the functionality of the system in which case a stochastic model is appropriate. On the other hand, a deterministic model still may capture the phenomenological behavior and is typically much easier to work with analytically and numerically. Finally it is worth noting that there exist exceptions to these rules of thumb, rooted in the exceptional computational power of CRNs \ref{???}.
\end{breakout}

\begin{popquiz}[label=pq:crn:stoch]
  For each of the following cases, describe whether stochastic or deterministic CRNs would be more appropriate.
  \begin{enumerate}[label=\alph*.]
    \item Modeling how single piece of DNA in a vesicle interacts with proteins.
    \item Modeling how synthetic single stranded RNA interacts with itself (such as folding into secondary structures).
    \item Modeling the dissociation of table salt in water.
    \item Modeling the spread of infections between people in different countries during a pandemic
  \end{enumerate}
\solution
  \begin{enumerate}[label=\alph*.]
    \item Stochastic is probably appropriate here because there is a single piece of DNA in a small volume.
    \item Both stochastic and deterministic models could be used in this case because the RNA only interacts with itself.
    \item A deterministic model is best here because there are many salt molecules and ions.
    \item Both stochastic and determinsitic models could be used. In the stochastic case, the number of of infected individuals in each country would be modeled. In the deterministic case, the percentage of infected people would be modeled. 
  \end{enumerate}
\end{popquiz}



\begin{breakout}[label=box:crn:definitions]{CRN Mathematical Definitions:}

  \begin{definition}{Chemical Reaction Network (CRN)}
    A CRN consists a finite set of species, reactions, and propensities each of which is defined below.
    CRNs can be simulated using both stochastic and deterministic dynamics.
  \end{definition}
  
  \begin{definition}{Species}
    The abstract chemical (or otherwise) elements which interact in the CRN.
    Denoted by an uppercase letter such as \ce{S_{$i$}}, \ce{X}, \ce{Y}, etc.
    Subscripts or different symbols may be used to denote different species.
    The amount of a species (count or concentration) will be denoted by the lower case letter e.g. $s_i$, $x$, $y$, etc. 
  \end{definition}

  \begin{definition}{Reaction}
    Species inter-convert via reactions of the form
      \begin{equation*}
        \ce{ $\sum_i I_{i, r}$ S_{$i$} ->[$\rho_r$] $\sum_i O_{i, r}$ S_i.}
      \end{equation*}
    $I_{i, r}$ and $O_{i, r}$ are non-negative integers describing the number of species $S_i$ that are inputs and outputs to the reaction $r$, respectively.
  \end{definition}
    
  \begin{definition}{Propensity}
    The rate at which a reaction occurs.
    In general, propensities reactions can be any function $\rho_r(s) \geq 0$.
  \end{definition}
    
  \begin{definition}{Mass action}
    The most commonly used propensity in CRN models derived from the behavior of ideal gasses.
    This propensity has different forms for stochastic and deterministic semantics:
    \begin{align}
      \label{eq:crn:massaction-propensity}
      \rho^{\textrm{det}}_r(s) &= k_r \prod_i s_i^{I_{i, r}} &
      \rho^{\textrm{stoch}}_r(s) &=
        \frac{k_r}{V^{|I_r|-1}}
        \prod_i \frac{s_i!}{(s_i - I_r^i)!}.
    \end{align}
    Here, $\prod$ is the product operator, $V$ is the volume of the CRN, and $|I_r| = \sum_i I_{i, r}$ denotes the total number of inputs into the reaction $r$.
    In this text, if only a rate constant $k_r$ is given, the propensity is assumed to be mass action.
  \end{definition}
    
  \begin{definition}{Stoichiometric Matrix}
    Commonly denoted $\Delta = O - I$, the element $\Delta_{i, r}$ denotes how many of species $i$ are produced or consumed in reaction $r$.
  \end{definition}
    
  \begin{definition}{Chemical Master Equation:}
    Determines the the time evolution of the probability, $\Pr(s, t)$, that the species of a CRN have the counts $s$ at time $t$:
    \begin{align}
      \label{eq:crn:cme2}
      \dv{\Pr(s, t)}{t} &=
        \sum_r [  \rho_r(s - \Delta_r) \Pr(s - \Delta_r, t)
                - \rho_r(s) \Pr(s, t)].
    \end{align}
    The first term is the probability flowing into the state with counts $s$ and the second term is the is the probability flowing out of state with counts $s$.
  \end{definition}
    
  \begin{definition}{Steady State Distribution}
    A time-independent solution to stochastic CRN dynamics $\Pr_{\mathrm{ss}}(s)$.
    This is found by setting the chemical master equation $\dv{\Pr(s, t)}{t} = 0$ and can be thought of as the limiting behavior of the system when the dynamics are averaged over infinite time.
  \end{definition}
    
  \begin{definition}{Reachability Class}
    The set of discrete states (counts) $\Gamma_{s(0)}$ reachable by a stochastic CRN via any sequence of reactions starting at initial condition $s(t=0)$.
    Note that the reachability class is always a subset of the positive integer lattice, $\Gamma_{s(0)} \subseteq \mathbb{Z}_{\geq 0}^N$ where $N$ is the number of species.
  \end{definition}
    
  \begin{definition}{Deterministic Dynamics}
    Are given by an ordinary differential equation governing the concentration $s$ of the species:
    \begin{align*}
      \dv{s}{t} &= \sum_r \Delta_r \rho_r(s).
    \end{align*}
  \end{definition}
    
  \begin{definition}{Fixed Points}
    Points $s^*$ where the concentrations no longer change in time, $\dv{s^*}{t} = 0$.
    Also called stationary points.
  \end{definition}
    
  \begin{definition}{Stoichiometric Compatability Class}
    The set of continuous states (concentrations), $\gamma_{s(0)}$ spanned by the forward and reverse dynamics of a deterministic CRN given an initial condition $s(t=0)$.
    Mathematically, $\gamma_{s(0)}$ can be computed by calculating the kernel of the stoichiometric matrix and restricting it to the positive real numbers: $\gamma_{s(0)} \subseteq \mathbb{R}_{\geq 0}^N$.
  \end{definition}
\end{breakout}

\section{Problems}

\begin{problem}[quantitative]
  Implement the Gillespie SSA algorithm from \Cref{box:crn:gillespie-ssa} in your language of choice and simulate the following CRNs (for simplicity you may assume the volume $V = 1$).
  Describe the behavior of each model as you change the initial conditions.
  \begin{enumerate}[label=\alph*)]
    \item \ce{$\emptyset$ <=>[10][.5] X}.
    \item \ce{A + B ->[10] 2B}, \kern1em
          \ce{B + C ->[10] 2C}, \kern1em
          \ce{A + C ->[10] 2A}.
    \item \ce{X_0 ->[1] X_0 + Y_0}, \kern1em
          \ce{X_1 ->[1] X_1 + Y_1}, \kern1em
          \ce{2Y_0 + X_1 <=>[100][1] Z_1}, \kern1em
          \ce{2Y_1 + X_0 <=>[100][1] Z_0}, \kern1em
          \ce{Y_0 ->[0.01] $\emptyset$}, \kern1em
          \ce{Y_1 ->[0.01] $\emptyset$}.
  \end{enumerate}
\end{problem}

\begin{problem}[quantitative]
  Simulate the CRNs from the previous question deterministic using any ODE integrator (or by writing a simple one yourself).
  Describe the behavior of each model as you change the initial conditions.
\end{problem}

\begin{problem}[quantitative]
  The \keyword{fixed point} of a deterministic CRN is a point $s^*$ such that $\dv{s}{t}\big|_{s^*} = 0$.
  Similarly, the \keyword{steady state distribution} of a stochastic CRN is a probability vector $\Pr_{\mathrm{ss}}(s)$ such that
  $\dv{\Pr(s)}{t}\big|_{\mathrm{ss}}= 0$.
  %$\dv{\Pr(s)}{t}\Big|_{\Pr_{\mathrm{ss}}}= 0$.
  Consider the following CRN, 
  \[ \ce{$\emptyset$ <=>[$k_2$][$k_1$] X}. \]
  \begin{enumerate}[label=\alph*.]
    \item show that $s = \frac{k_1}{k_2}$ is a fixed point for the deterministic CRN.
    \item show that $\Pr(s) = \frac{1}{s!} \exp(-s \log \frac{k_1}{k_2})$ is the steady state distribution for the stochastic CRN.
  \end{enumerate}
\end{problem}

\begin{problem}[quantitative,label=prob:crn:hill-fn]
  Hill Functions are a common kind of propensity of the forms
  \begin{align*}
    \rho_{\textrm{hill+}} = k \frac{S^n}{K_D^n + S^n}, &~ \textrm{a positive hill function, and} \\
    \rho_{\textrm{hill-}} = k \frac{1}{K_D^n + S^n}, &~ \textrm{a negative hill function}.
  \end{align*}
  These functions are used to model saturating behaviors and can be thought of as simplifications to more complex mass action systems.
  Consider the deterministic CRN
  \[ \ce{A + C <=>[$k_1$][$k_2$] D ->[$k_{\textrm{cat.}}$] B + C}. \]
  \begin{enumerate}[label=\alph*.]
    \item Assume $k_1, k_2 \gg k_{\text{cat.}}$.
    This means that the first two reactions can be approximated as being at \keyword{quasi-equilibrium} relative to the third reaction.
    To make this approximation, assume $k_{\textrm{cat.}} = 0$ and solve for the steady state concentration of \ce{D}.
    \item The third reaction can then be reintroduced individually as a hill function \ce{A ->[$\rho(s)$] B}.
    Using the result from (a), determine the function $\rho(s)$.
    \item Assume that $\dv{D}{t} = 0$. This is called the quasi-steady-state approximation because the concentration of the bound complex \ce{D} is assumed to be in steady state. Furthermore, assume and $D \ll A+B$. Show that under these assumptions the entire CRN can be modeled as a single reaction \ce{A ->[$\rho(s)$] B} with a positive hill function different than the one in part (b).
    \item Simulate the full CRN as well as the reduced hill function CRNs for different parameters of $k_1$, $k_2$ and $k_{\textrm{cat.}}$ and initial conditions $D(0)$, and $A(0)$. When do each of these approximations work? [Hint: try varying the order of magnitude of different parameters independently].
  \end{enumerate}
\end{problem}

\begin{problem}[advanced]
  Find a CRN where the mean of the stochastic steady state distribution is not equal to the fixed point of the deterministic CRN.
\end{problem}



\begin{further}
  \entry{adleman+}{Read this to find out more about the origins of dna computing.}
  \entry{winfree+}{Read this to find out more about tile assembly.}
\end{further}
{% endraw %}{% endhighlight %}