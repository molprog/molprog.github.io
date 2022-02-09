---
layout: aomp-toc
mini: false
---
1. <a name="Foreword" class="tag" href="#Foreword"><code>Foreword</code>Foreword</a>
2. <a name="History" class="tag" href="#History"><code>History</code>Introduction &amp; A Brief History of Molecular Computing</a>
3. <a name="Foundations" class="tag" href="#Foundations"><code>Foundations</code>Foundations</a>
    1. <a name="PrimerBio" class="tag" href="#PrimerBio"><code>PrimerBio</code>Biology for Molecular Programmers</a>
        - Central dogma &amp; cell response to external stimuli
        - Compartmentalization &amp; reactions?
        - Common DNA/RNA binding macromolecules (Box)
    2. <a name="PrimerThermo" class="tag" href="#PrimerThermo"><code>PrimerThermo</code>Basic Thermodynamics</a>
        - Concept of entropy, enthalpy, Gibbs energy, Chemical Equilibrium
        - Thermodynamic energy landscapes, partition function
    3. <a name="PrimerODE_CRN" class="tag" href="#PrimerODE_CRN"><code>PrimerODE_CRN</code>Dynamic Models ODEs and Chemical Reaction Networks</a>
        - Stochastic Models
        - Deterministic Models
        - Box on rule-based systems / process algebras
    4. <a name="MethodDNAProd" class="tag" href="#MethodDNAProd"><code>MethodDNAProd</code>Experimental Methods to Produce DNA</a>
        1. <a name="MethodDNASynth" class="tag" href="#MethodDNASynth"><code>MethodDNASynth</code>Synthesis of DNA</a>
            - Phosphoramidite (chemical synthesis)
            - Ligation-based, Gibson assembly
            - Single-stranded DNA production, e.g. asymmetric PCR, bead pulldown, phagemid production, cell production, RCA, etc
            - In vivo assembly, e.g. with yeast
            - Upcoming methods: PER, TdT-based
            - Scaled production: bacteriophage/cell culture/IVT+RT
            - Modifications/redox/thiol/maleimide, NHS, succinimide, amine, enzymatic approaches, biotinylation, fluorization, dyes and quenchers etc.
            - BOX/TABLE: Discussion/comparison of yield, error rates, costs, challenges (e.g. repetitive sequences, modifications) for different ways of writing DNA
        2. <a name="MethodPurif" class="tag" href="#MethodPurif"><code>MethodPurif</code>Purification (HPLC/agarose and polyacrylamide electrophoresis/centrifugation)</a>
            - Agarose/PAGE purification
            - Chromatography (HPLC, LC, maybe capillary?, ion exchange, size exclusion for origami purification, affinity like via his-tags)
            - Centrifugation (filter, gradient, ultracentrifugation)
            - Precipitation/binding methods: magnetic beads, PEG precipitation
    5. <a name="MethodRNAProd" class="tag" href="#MethodRNAProd"><code>MethodRNAProd</code>Experimental methods to produce and modify RNA</a>
    6. <a name="MethodPepProd" class="tag" href="#MethodPepProd"><code>MethodPepProd</code>Experimental methods to produce and modify proteins</a>
        - protein-DNA conjugation
    7. <a name="MethodAnalysis" class="tag" href="#MethodAnalysis"><code>MethodAnalysis</code>Experimental Methods for Analysis:</a>
        1. <a name="MethodGel" class="tag" href="#MethodGel"><code>MethodGel</code>Gel electrophoresis</a>
            - Intercalating dyes vs fluorophores  or radiolabeling
            - Separation quality as a function of gel % and DNA length?
            - Role of buffer conditions
            - Pulse field gradient electrophoresis \+ Other advanced methods (reference)
            - Capillary electrophoresis
            - Denaturing Gels
            - Stacking Gels
        2. <a name="MethodMicrosc" class="tag" href="#MethodMicrosc"><code>MethodMicrosc</code>Microscopy (AFM, TEM/cryoEM/SEM, fluorescence/superresolution - PAINT)</a>
            - Contrast mechanisms and their drawbacks (stains being inconsistent, AFM always convolutes tip, etc)
        3. <a name="MethodSpectrosc" class="tag" href="#MethodSpectrosc"><code>MethodSpectrosc</code>Spectroscopy (fluorescence/CD/etc)</a>
            - Table comparing different methodologies: labelled vs unlabelled, sensitivities, throughput?Background reporter signal?
            - Quenchers
            - Photobleaching (things that kill fluorophores permanently)
            - EXTINCTION COEFFICIENTS. basics of beer’s law. assumptions re: additivity of nucleotides. nearest neighbor model for absorption. denatured vs native.
        4. <a name="MethodMassSpec" class="tag" href="#MethodMassSpec"><code>MethodMassSpec</code>Mass Spec</a>
            - Detecting large amounts of small molecules in solution
            - Understand mass spectra (e.g. oligo synthesis)
        5. <a name="MethodSeq" class="tag" href="#MethodSeq"><code>MethodSeq</code>Sequencing</a>
            - Sanger sequencing
            - NGS \- Illumina, PacBio, DNAnanoball,
            - Nanopore
            - Microarrays

<!--section-->

## <a name="Structures" class="tag" href="#Structures">Structures</a>
4. <a name="Chemistry" class="tag" href="#Chemistry"><code>Chemistry</code>From molecules to variables</a>
    1. <a name="InfoMols" class="tag" href="#InfoMols"><code>InfoMols</code>What are information bearing molecules?</a>
        - nucleic acids (basic features and geometry)
        - proteins/peptides; Protein geometry (alpha helix, ...)
        - Other (PNA, L-DNA, new nucleotides, polysaccharides, block-copolymers, other supramolecular programmable molecules)
        - Information in unordered mixtures of small molecules
    2. <a name="Glue" class="tag" href="#Glue"><code>Glue</code>The interactions that glue molecules together</a>
        - Chemical bonds and interactions (a primer in chemistry)
        - Intramolecular forces via covalent bonds: peptide bonds, ester bonds, delocalised aromatic bonds.
        - Intermolecular forces and non-covalent bonds: Van der Waals, hydrogen bond and hydrophobicity, stacking interactions, electrostatic interactions, Debye screening. (Table with relative bond strengths)
        - Entropic forces: depletion, steric, fractionation, crowding, polymers
    3. <a name="MolN" class="tag" href="#MolN"><code>MolN</code>Digital description of molecules.</a>
        - Structure abstraction layers: Primary, Secondary, Tertiary structure
        - Sequence abstraction layers: domain level vs nucleotide level
        - Notations: Dot parens plus notation, DU+ notation, ...
        - SMILES string for small molecules
        - Notions of “valid” conformations (nearest neighbor model)
        - Intuition behind coarse-grained representations and macrostates
    4. <a name="MolV" class="tag" href="#MolV"><code>MolV</code>Digital visualization of molecules</a>
        - Intuition behind coarse-grained representations and macrostates
        - How can we represent molecules graphically
        - Intro into formal concepts for visualization.
5. <a name="Biomolecules" class="tag" href="#Biomolecules"><code>Biomolecules</code>Molecules as construction material</a>
    1. <a name="DNA" class="tag" href="#DNA"><code>DNA</code>DNA properties</a>
        - data sheet to find useful parameters.
        - Crossover motifs (anti-parallel and parallel)
        - Special motifs (I motif, G-quads, aptamers, triplex, Holliday junctions)
        - Non-Watson-Crick-Franklin base-pairing (wobble etc)
        - Differences between single and double stranded DNA (could be a box) \[for example different persistence lengths, inter-basepair lengths\].
        - Biophysical influence of buffer conditions on DNA structure
    2. <a name="RNA" class="tag" href="#RNA"><code>RNA</code>RNA properties</a>
        - data sheet to find useful parameters.
        - Special motifs (I motif, G-quads, kissing loops, aptamers, ribozymes)
        - Biophysical influence of buffer conditions on RNA structure and stability
        - Non-canonical base pairing
    3. <a name="DSD" class="tag" href="#DSD"><code>DSD</code>Dynamic processes of nucleic acids</a>
        - Hybridisation
        - Toehold-mediated strand displacement via branch migration
        - 4-way strand displacement
    4. <a name="Protein" class="tag" href="#Protein"><code>Protein</code>Protein biochemistry</a>
        - data sheet to find useful parameters.
        - Enzymatic activity and binding pockets, …
        - Special motifs of secondary structure (alpha helices, beta sheets), tertiary structure (fold families like b-barrels etc)
        - Quaternary structure: Multimeric protein complexes
        - Biophysical influence of buffer conditions on enzyme activity and protein structure
    5. <a name="XNA" class="tag" href="#XNA"><code>XNA</code>Non-canonical polymers and interactions (LNA, PNA, XNA, etc)</a>
        - Comparisons of interactions between canonical polymers (DNA/RNA, Protein/RNA binding)
        - Protein Non-canonical amino acids
        - data sheet to find useful parameters...
6. <a name="Biophysics" class="tag" href="#Biophysics"><code>Biophysics</code>Interfacing biophysical and computational models for analysis and design.</a>
    1. <a name="PP" class="tag" href="#PP"><code>PP</code>Polymer physics models for nucleic acids and proteins.</a>
        - Static properties
        - Elastic models (FJC, WLC)
        - Transport phenomena (viscosity, diffusion)
    2. <a name="MD" class="tag" href="#MD"><code>MD</code>Molecular dynamics models.</a>
        <ul>
            <li>Box: coarse grained models for nucleic acids</li>
            <li class="tagged"><a name="proteinMD" class="tag" href="#proteinMD"><code>proteinMD</code>MD for proteins</a></li>
        </ul>
    3. <a name="NN" class="tag" href="#NN"><code>NN</code>The thermodynamic nearest neighbor model.</a>
        - single DNA/RNA molecules
        - multi stranded nucleic acid systems
    4. <a name="NLKin" class="tag" href="#NLKin"><code>NLKin</code>Nearest neighbor level stochastic simulations</a>
        - Thermodynamic energy landscapes and their application (and limitations) for Gillespie-type kinetic simulations
    5. <a name="DLKin" class="tag" href="#DLKin"><code>DLKin</code>Models  of hybridization, dissociation and branch migration.</a>
        - The ad-hoc approach (based on experimental results)
        - Molecular Dynamics Models (e.g. oxDNA)
        - Secondary Structure Kinetics (with and without the nearest neighbor model, e.g. Dave Zhang 2009 and Niranjan 2013 CRN Models, Multistrand)
    6. <a name="SeqDesign" class="tag" href="#SeqDesign"><code>SeqDesign</code>DNA/RNA Sequence design.</a>
        - Why does sequence design work? &ndash; properties of landscapes (Lenvinthal’s paradox?)
        - Sequence design as an artificial evolution to optimize a landscape.
        - Formulation of a thermodynamic objective function for multistable design.
        - Formulation of combinatorial WCF base-pairing objectives.
        - Incorporation of kinetic objectives into sequence design (possibly with reference to kinetic proofreading.)
    7. <a name="ProteinDesign" class="tag" href="#ProteinDesign"><code>ProteinDesign</code>Sequence design of proteins to fold into a specific structure</a>
        - Rational Protein engineering (David Baker, U Washington )
            - Box: theory/tools for rational design
        - Directed Evolution protein engineering (Frances Arnold)
            - Box: Theory of directed evolution
        - Alphafold2 box on learned structure prediction and the protein folding grand challenge
7. <a name="SelfAssembly" class="tag" href="#SelfAssembly"><code>SelfAssembly</code>Introduction into molecular self-assembly theory via natural examples.</a>
    1. <a name="NatAssemblyMac" class="tag" href="#NatAssemblyMac"><code>NatAssemblyMac</code>Self-assembly of macroscopic phases</a>
        - Crystals
        - Gels and disordered phases
        - Liquid-liquid phase separation
        - Lipid membranes and bilayers
    2. <a name="NatAssemblyMic" class="tag" href="#NatAssemblyMic"><code>NatAssemblyMic</code>Self-assembly of finite-sized structures</a>
        - Assembly from distinct units (capsid, enzyme complexes, ribosome...)
        - Protein folding and cyclisation/looping (eg. hairpins)
    3. <a name="NatAssemblyNoneq" class="tag" href="#NatAssemblyNoneq"><code>NatAssemblyNoneq</code>Beating equilibrium in self-assembled systems</a>
        - Molecular templating as a way to drive the formation of non-equilibrium structures (central dogma).
        - Molecular species such as ATP as a store of high free energy fuel.
        - Use of fuel to push assembled systems out of equilibrium (kinetic proofreading, chaperones).
        - Use of fuel to create dynamic non-equilibrium systems (motors, signal-processing architectures, things like microtubules which are a form of &quot;dissipative self-assembly&quot;).
8. <a name="DNAstructures" class="tag" href="#DNAstructures"><code>DNAstructures</code>Programmed molecular self-assemblies (experiments)</a>
    1. <a name="AssembledDNA" class="tag" href="#AssembledDNA"><code>AssembledDNA</code>Scaffold-less DNA assemblies</a>
        - ss Tiles,
        - dx Tiles
        - HCR
        - Simple polyhedra: Seeman cube, tetrahedron, Yamuna’s icosahedron, Mao’s Bucky ball and octahedron.
    2. <a name="Origami" class="tag" href="#Origami"><code>Origami</code>DNA Origami</a>
        - The concept
        - Design principles, cooperativity
            - Sequence design constraints
        - Design and simulation tools
        - “Wireframe origami” examples 1D / 2D / 3D structures
        - Production and purification
            - Custom scaffold design
            - Thermo/stoichiometry
    3. <a name="MultiComponent" class="tag" href="#MultiComponent"><code>MultiComponent</code>Periodic and Multi component assemblies</a>
        - Shape complementary, base stacking
        - Self-limiting assemblies (rings)
        - Fractal assemblies
        - Lattices, ribbons, nanotubes, and crystals
        - Interlocked assemblies (e.g. origami rotaxanes) \-&gt; connection to mechanics
    4. <a name="DynamicDNA" class="tag" href="#DynamicDNA"><code>DynamicDNA</code>Dynamic rearrangements of structures</a>
        1. <a name="DynDNAMotion" class="tag" href="#DynDNAMotion"><code>DynDNAMotion</code>DNA tweezers, walkers, and motors</a>
            - DNA tweezers, DNA Walkers, burnt-bridge motor
        2. <a name="DynDNAMech" class="tag" href="#DynDNAMech"><code>DynDNAMech</code>Nanomechanical devices</a>
            - Mechanical constructs / active components/ machines / walkers (comparison with molecular motors/enzymes)
    5. <a name="ProgrammedRNA" class="tag" href="#ProgrammedRNA"><code>ProgrammedRNA</code>RNA Structures</a>
        - RNA nanoparticles / Tiles
        - Cotranscriptional RNA-Origami
        - Multi-stranded RNA tiling
    6. <a name="ProgrammedProtein" class="tag" href="#ProgrammedProtein"><code>ProgrammedProtein</code>Synthetic Protein Structure</a>
        - Protein Complexes (engineering Protein \- protein interactions)
            - [Nanocage self-assembly](https://doi.org/10.1038/nature18010)
    7. <a name="LiquidDNA" class="tag" href="#LiquidDNA"><code>LiquidDNA</code>Other phases of DNA structures (Physical properties)</a>
        - DNA hydrogels
        - DNA liquids
        - Coacervates
    8. <a name="SurfaceDNA" class="tag" href="#SurfaceDNA"><code>SurfaceDNA</code>DNA-grafted structures on surfaces</a>
        - Colloids
        - Polymer/DNA brushes (surface/colloid coatings)
        - Grafted nanoparticles

<!--section-->

## <a name="Circuits" class="tag" href="#Circuits">Circuits</a>
9. <a name="Computation" class="tag" href="#Computation"><code>Computation</code>Introduction to Computation</a>
    1. <a name="Computation_intro" class="tag" href="#Computation_intro"><code>Computation_intro</code>Intro to computation / information processing</a>
    2. <a name="conventionalComp" class="tag" href="#conventionalComp"><code>conventionalComp</code>Conventional computation</a>
    3. <a name="CompBackground" class="tag" href="#CompBackground"><code>CompBackground</code>Background: boolean logic, turing machines, register machines, analog computation nondeterministic finite automata, cellular automata</a>
    4. <a name="unconventionalComp" class="tag" href="#unconventionalComp"><code>unconventionalComp</code>Examples of unconventional computing</a>
    5. <a name="naturalComp" class="tag" href="#naturalComp"><code>naturalComp</code>Examples of natural computing (e.g. neural networks, gene regulatory networks)</a>
    6. <a name="molprogLang" class="tag" href="#molprogLang"><code>molprogLang</code>Molecular programming languages</a>
    7. <a name="molprogCompil" class="tag" href="#molprogCompil"><code>molprogCompil</code>Compiling molecular programs</a>
10. <a name="CRN" class="tag" href="#CRN"><code>CRN</code>Programming molecular behaviors over time (CRNs)</a>
    1. <a name="CRN_intro" class="tag" href="#CRN_intro"><code>CRN_intro</code>Introduction</a>
    2. <a name="sCRN" class="tag" href="#sCRN"><code>sCRN</code>Computing with Stochastic CRNs</a>
        - Theory example and analysis: min/max and boolean logic programming with CRNs
        - Biology example: something simple
        - Computational Power of Stochastic CRNs
        - Time complexity of stochastic CRNs
    3. <a name="CRNdistribution" class="tag" href="#CRNdistribution"><code>CRNdistribution</code>Compute with distributions</a>
    4. <a name="dCRN" class="tag" href="#dCRN"><code>dCRN</code>Computing with Deterministic CRNs</a>
        - Theory examples: circuits, boolean circuits, oscillators, bistability, etc.
        - Well-mixed CRN’s as example of analog computing
        - Computing functions (e.g. \\(y=kx\\))
        - Approximate majority
        - Dynamic system: Oscillators, bistability
        - Biology example: (predator-prey / ecology models)
        - Computational power of deterministic CRNs
    5. <a name="CRN_advanced" class="tag" href="#CRN_advanced"><code>CRN_advanced</code>Advanced topics in CRNs</a>
        - Small molecule early work: John Ross (Stanford)
        - Small molecule CRN implementations
        - Small molecule oscillating reactions: BZ reaction (Irving Epstein’s work)
11. <a name="NucleicAcidCircuits" class="tag" href="#NucleicAcidCircuits"><code>NucleicAcidCircuits</code>Nucleic acids as a universal substrate for molecular programming</a>
    1. <a name="NucleicIntro" class="tag" href="#NucleicIntro"><code>NucleicIntro</code>Introduction (reference Foundations for overlapping topics)</a>
        - Reference to Structures section on background: nucleic acid hybridization and thermodynamics
        - Background: nucleic acid branch migration
        - Toehold-mediated strand displacement
        - Experiment examples: toehold exchange reaction
    2. <a name="StrandDisplacementCascades" class="tag" href="#StrandDisplacementCascades"><code>StrandDisplacementCascades</code>Strand displacement cascades</a>
        1. <a name="DNAforCRNs" class="tag" href="#DNAforCRNs"><code>DNAforCRNs</code>Theory &amp; experiment: DNA as a universal substrate for CRNs</a>
        2. <a name="EarlyBooleanDSD" class="tag" href="#EarlyBooleanDSD"><code>EarlyBooleanDSD</code>Boolean circuits: an early example</a>
        3. <a name="DSDsequenceDesign" class="tag" href="#DSDsequenceDesign"><code>DSDsequenceDesign</code>Box: DSD sequence design strategies</a>
        4. <a name="ApproxMajorityTwoDomain" class="tag" href="#ApproxMajorityTwoDomain"><code>ApproxMajorityTwoDomain</code>Approximate majority (two-domain design)</a>
        5. <a name="AmplifyCatalyze" class="tag" href="#AmplifyCatalyze"><code>AmplifyCatalyze</code>Amplification and catalysis</a>
        6. <a name="Threshold" class="tag" href="#Threshold"><code>Threshold</code>Thresholding</a>
        7. <a name="Seesaw" class="tag" href="#Seesaw"><code>Seesaw</code>Seesaw circuits</a>
        8. <a name="NucleicNeuralNetworks" class="tag" href="#NucleicNeuralNetworks"><code>NucleicNeuralNetworks</code>Neural networks</a>
        9. <a name="Oscillator" class="tag" href="#Oscillator"><code>Oscillator</code>Oscillators</a>
    3. <a name="NucleicAdvanced" class="tag" href="#NucleicAdvanced"><code>NucleicAdvanced</code>Advanced designs in DNA strand displacement cascades</a>
        1. <a name="ToeholdActivation" class="tag" href="#ToeholdActivation"><code>ToeholdActivation</code>Toehold activation</a>
        2. <a name="4wDSD" class="tag" href="#4wDSD"><code>4wDSD</code>Theory &amp; Experiment: 4wDSD circuits</a>
    4. <a name="NucleicLeakless" class="tag" href="#NucleicLeakless"><code>NucleicLeakless</code>Leakless circuits</a>
        - Why do circuits leak and why leaks are problematic
        - How to avoid leak. Examples of leakless circuits
12. <a name="EnzymeCircuits" class="tag" href="#EnzymeCircuits"><code>EnzymeCircuits</code>Programming behavior with diverse biomolecules</a>
    1. <a name="EnzymeCircuitsIntro" class="tag" href="#EnzymeCircuitsIntro"><code>EnzymeCircuitsIntro</code>Introduction</a>
        - Background: enzymatic behaviors
    2. <a name="PolymeraseCircuits" class="tag" href="#PolymeraseCircuits"><code>PolymeraseCircuits</code>DNA polymerase-based circuits</a>
        - PEN circuits, predator prey
        - APR, PER circuits (whiplash PCR?)
        - Shah et al. work on logic gates
    3. <a name="TranscriptionalCircuits" class="tag" href="#TranscriptionalCircuits"><code>TranscriptionalCircuits</code>Transcribed RNA-based circuits</a>
        1. <a name="ToeholdSwitches" class="tag" href="#ToeholdSwitches"><code>ToeholdSwitches</code>Toehold switches</a>
        2. <a name="ConditionalCrispr" class="tag" href="#ConditionalCrispr"><code>ConditionalCrispr</code>Conditional crispr</a>
        3. <a name="Oritatami" class="tag" href="#Oritatami"><code>Oritatami</code>Oritatami</a>
        4. <a name="Genelets" class="tag" href="#Genelets"><code>Genelets</code>Genelets</a>
    4. <a name="ProteinCircuits" class="tag" href="#ProteinCircuits"><code>ProteinCircuits</code>Protein-based circuits</a>
        - Protein-protein binding circuits
        - Phosphorylation based circuits
    5. <a name="GeneCircuits" class="tag" href="#GeneCircuits"><code>GeneCircuits</code>Gene circuits</a>
        1. <a name="GeneLogicGates" class="tag" href="#GeneLogicGates"><code>GeneLogicGates</code>Logic gates</a>
        2. <a name="GeneOscillators" class="tag" href="#GeneOscillators"><code>GeneOscillators</code>Repressilator</a>
        3. <a name="GeneNetworks" class="tag" href="#GeneNetworks"><code>GeneNetworks</code>Theory of synthetic gene regulatory networks (incl. Cell-level circuits)</a>
        - References to good syn bio resources?
    6. <a name="SmMolCircuits" class="tag" href="#SmMolCircuits"><code>SmMolCircuits</code>Small molecule cascades</a>
        - Autocatalytic reactions and applications
13. <a name="SpatiallyOrganizedCircuits" class="tag" href="#SpatiallyOrganizedCircuits"><code>SpatiallyOrganizedCircuits</code>Spatially-Organized Circuits</a>
    1. <a name="SpatialIntro" class="tag" href="#SpatialIntro"><code>SpatialIntro</code>Introduction: advantages of spatial structures</a>
    2. <a name="SpatialBackground" class="tag" href="#SpatialBackground"><code>SpatialBackground</code>Background: compartmentalization in biology</a>
    3. <a name="SurfaceCRNs" class="tag" href="#SurfaceCRNs"><code>SurfaceCRNs</code>Surface CRNs</a>
        - Surface DNA circuits and DNA walkers
    4. <a name="DropletComputing" class="tag" href="#DropletComputing"><code>DropletComputing</code>Droplet-based computing / “synthetic compartmentalization”</a>
    5. <a name="ReactionDiffusion" class="tag" href="#ReactionDiffusion"><code>ReactionDiffusion</code>Reaction diffusion circuits</a>
    6. <a name="MicrofluidicsBox" class="tag" href="#MicrofluidicsBox"><code>MicrofluidicsBox</code>Microfluidics Breakout Box</a>
14. <a name="AdvancedAssembly" class="tag" href="#AdvancedAssembly"><code>AdvancedAssembly</code>Advanced topics in tile assembly (algorithmic self-assembly)</a>
    1. <a name="TileAssembly" class="tag" href="#TileAssembly"><code>TileAssembly</code>Tile self-assembly</a>
        - Tiling theory as a mathematical theory (Geometry, Wang tiles).
        - A-tam and K-tam.
        - Tiles and algorithmic self assembly, example algorithms
        - Selected models (3D, active tile-assembly, probabilistic…), the problems that led to their creation.
        - Error correction and proofreading strategies
    2. <a name="WangTile" class="tag" href="#WangTile"><code>WangTile</code>Wang tile ATAM Turing machine implementation</a>
    3. <a name="TileComplexity" class="tag" href="#TileComplexity"><code>TileComplexity</code>Tile Complexity of shapes and patterns</a>
    4. <a name="ExtendedAssembly" class="tag" href="#ExtendedAssembly"><code>ExtendedAssembly</code>Extended tile-assembly models and their computational power</a>
    5. <a name="ActiveAssembly" class="tag" href="#ActiveAssembly"><code>ActiveAssembly</code>Nubots, amoebots, turning machines</a>
15. <a name="CircuitsConclusion" class="tag" href="#CircuitsConclusion"><code>CircuitsConclusion</code>Conclusion</a>

<!--section-->

## <a name="Interfaces" class="tag" href="#Interfaces">Interfaces</a>
16. <a name="IntIntro" class="tag" href="#IntIntro"><code>IntIntro</code>Introduction to Interfaces &amp; Applications</a>
17. <a name="CompInt" class="tag" href="#CompInt"><code>CompInt</code>Integrating Molecular Programming with Traditional Computers</a>
    1. <a name="CompIntIntro" class="tag" href="#CompIntIntro"><code>CompIntIntro</code>Introduction</a>
        - Pros
        - Cons
    2. <a name="LgDataStorage" class="tag" href="#LgDataStorage"><code>LgDataStorage</code>Large-Scale Molecular Data Storage (focusing on DNA)</a>
        - History
        - Encoding
        - Synthesis
        - Storage
        - Recovery
        - Readout
        - Decoding
    3. <a name="SmDataStorage" class="tag" href="#SmDataStorage"><code>SmDataStorage</code>Small-Scale Molecular Data Storage (focusing on small molecules)</a>
        - History
        - Encoding
        - Synthesis
        - Storage
        - Recovery
        - Readout
        - Decoding
    4. <a name="CompIntFuture" class="tag" href="#CompIntFuture"><code>CompIntFuture</code>Emerging/future applications</a>
        - Implementing algorithms
        - New bases and chemicals
18. <a name="ChemPhysInt" class="tag" href="#ChemPhysInt"><code>ChemPhysInt</code>Chemical and Physical Interactions</a>
    1. <a name="Material" class="tag" href="#Material"><code>Material</code>Material science</a>
        1. <a name="DNATemplate" class="tag" href="#DNATemplate"><code>DNATemplate</code>DNA as a template for non-DNA molecules</a>
            - Encoding template
            - Positioning template
            - Framing template
        2. <a name="SurfaceAssist" class="tag" href="#SurfaceAssist"><code>SurfaceAssist</code>Surface-assisted methods</a>
            - DNA nanostructure placement on surfaces
            - DNA lithography
            - Large lattices
    2. <a name="ChemCtrl" class="tag" href="#ChemCtrl"><code>ChemCtrl</code>Chemical control</a>
    3. <a name="MagCtrl" class="tag" href="#MagCtrl"><code>MagCtrl</code>Magnetic control</a>
        - Fundamentals of magnetic control at the nanoscale
        - Magnetic control of molecular systems
    4. <a name="OptCtrl" class="tag" href="#OptCtrl"><code>OptCtrl</code>Optical control</a>
        - Primer on optical materials
        - DNA plasmonic and photonic circuits
        - Dynamic control of optical DNA devices
    5. <a name="ThemCtrl" class="tag" href="#ThemCtrl"><code>ThemCtrl</code>Thermal control</a>
        - Thermal control of duplex
        - Thermal control of stacking and shape complementarity
        - Thermo-responsive materials
        - Engineering thermodynamic landscape of DSD
    6. <a name="ElecCtrl" class="tag" href="#ElecCtrl"><code>ElecCtrl</code>Electrical control</a>
        - Electrical field-based control
        - DNA-based nanopore interface
        - Redox power source
    7. <a name="ChemPhysAdv" class="tag" href="#ChemPhysAdv"><code>ChemPhysAdv</code>Advanced topics and future directions</a>
19. <a name="BioInt" class="tag" href="#BioInt"><code>BioInt</code>Interacting with Biology, Medical Diagnostics and Therapeutics</a>
    1. <a name="BioToolbox" class="tag" href="#BioToolbox"><code>BioToolbox</code>Biology toolbox</a>
        - Enzymatics interactions with DNA
        - Tools for biological discovery
        - Challenges of working in a biological medium
            - Dealing with toxicity
            - Preventing degradation
            - Chemical modifications
            - Scaling up “bio factories”
            - Cell-free extracts
    2. <a name="Diag" class="tag" href="#Diag"><code>Diag</code>Diagnostics</a>
        1. <a name="DiagIntro" class="tag" href="#DiagIntro"><code>DiagIntro</code>Introduction to molecular diagnostics and precision medicine</a>
        2. <a name="BioTech" class="tag" href="#BioTech"><code>BioTech</code>Techniques for targeted binding of biomarkers</a>
            - Nucleic acids
            - Antibodies
            - Aptamers
            - Affimers and other affinity reagents
        3. <a name="BioSense" class="tag" href="#BioSense"><code>BioSense</code>Sensors and readouts for biomarker quantitation</a>
            - Electrochemical
            - Fluorescence
            - Surface plasmon resonance
            - Colorimetric
            - Electrophoresis
            - Other alternatives
    3. <a name="Therapy" class="tag" href="#Therapy"><code>Therapy</code>Therapy</a>
        1. <a name="TherMolProg" class="tag" href="#TherMolProg"><code>TherMolProg</code>Therapeutic molecular programming</a>
        2. <a name="NucAcidTher" class="tag" href="#NucAcidTher"><code>NucAcidTher</code>Therapeutic Nucleic Acids</a>
            - Genomic interactions
            - Antisense oligonucleotides
            - siRNA, mRNA, miRNA mimics
            - Aptamers
            - Delivery of nucleic acids
            - Approved or under-trial DNA/RNA-based drugs
        3. <a name="DrugDel" class="tag" href="#DrugDel"><code>DrugDel</code>Drug Delivery</a>
            - Benefits and applications of targeted drug delivery
            - Techniques for carrying and storing drugs using molecular programming
            - Mechanisms for target site detection and release
    4. <a name="CellInt" class="tag" href="#CellInt"><code>CellInt</code>Cellular Interfaces</a>
        - Introduction to artificial cells and cellular mimics
        - Synthetic organelles and cellular components
        - Cellular interactions
            - Manipulating signal pathways
            - Channel receptor mimics
        - Applications and research trajectory
    5. <a name="BurBioInt" class="tag" href="#BurBioInt"><code>BurBioInt</code>Burgeoning Biological Interfaces</a>
