---
layout: aomp-toc
---
1. <code id="Foreword">Foreword</code>Foreword
2. <code id="History">History</code>Introduction & A Brief History of Molecular Computing
3. <code id="Foundations">Foundations</code>Foundations
    1. <code id="PrimerBio">PrimerBio</code>Biology for Molecular Programmers
        - Central dogma & cell response to external stimuli
        - Compartmentalization & reactions?
        - Common DNA/RNA binding macromolecules (Box)
    2. <code id="PrimerThermo">PrimerThermo</code>Basic Thermodynamics
        - Concept of entropy, enthalpy, Gibbs energy, Chemical Equilibrium
        - Thermodynamic energy landscapes, partition function
    3. <code id="PrimerODE_CRN">PrimerODE_CRN</code>Dynamic Models ODEs and Chemical Reaction Networks
        - Stochastic Models
        - Deterministic Models
        - Box on rule-based systems / process algebras
    4. <code id="MethodDNAProd">MethodDNAProd</code>Experimental Methods to Produce DNA
        1. <code id="MethodDNASynth">MethodDNASynth</code>Synthesis of DNA
            - Phosphoramidite (chemical synthesis)
            - Ligation-based, Gibson assembly
            - Single-stranded DNA production, e.g. asymmetric PCR, bead pulldown, phagemid production, cell production, RCA, etc
            - In vivo assembly, e.g. with yeast
            - Upcoming methods: PER, TdT-based
            - Scaled production: bacteriophage/cell culture/IVT+RT
            - Modifications/redox/thiol/maleimide, NHS, succinimide, amine, enzymatic approaches, biotinylation, fluorization, dyes and quenchers etc.
            - BOX/TABLE: Discussion/comparison of yield, error rates, costs, challenges (e.g. repetitive sequences, modifications) for different ways of writing DNA
        2. <code id="MethodPurif">MethodPurif</code>Purification (HPLC/agarose and polyacrylamide electrophoresis/centrifugation)
            - Agarose/PAGE purification
            - Chromatography (HPLC, LC, maybe capillary?, ion exchange, size exclusion for origami purification, affinity like via his-tags)
            - Centrifugation (filter, gradient, ultracentrifugation)
            - Precipitation/binding methods: magnetic beads, PEG precipitation
    5. <code id="MethodRNAProd">MethodRNAProd</code>Experimental methods to produce and modify RNA
    6. <code id="MethodPepProd">MethodPepProd</code>Experimental methods to produce and modify proteins
        - protein-DNA conjugation
    7. <code id="MethodAnalysis">MethodAnalysis</code>Experimental Methods for Analysis:
        1. <code id="MethodGel">MethodGel</code>Gel electrophoresis
            - Intercalating dyes vs fluorophores  or radiolabeling
            - Separation quality as a function of gel % and DNA length?
            - Role of buffer conditions
            - Pulse field gradient electrophoresis + Other advanced methods (reference)
            - Capillary electrophoresis
            - Denaturing Gels
            - Stacking Gels
        2. <code id="MethodMicrosc">MethodMicrosc</code>Microscopy (AFM, TEM/cryoEM/SEM, fluorescence/superresolution - PAINT)
            - Contrast mechanisms and their drawbacks (stains being inconsistent, AFM always convolutes tip, etc)
        3. <code id="MethodSpectrosc">MethodSpectrosc</code>Spectroscopy (fluorescence/CD/etc)
            - Table comparing different methodologies: labelled vs unlabelled, sensitivities, throughput?Background reporter signal?
            - Quenchers
            - Photobleaching (things that kill fluorophores permanently)
            - EXTINCTION COEFFICIENTS. basics of beer’s law. assumptions re: additivity of nucleotides. nearest neighbor model for absorption. denatured vs native.
        4. <code id="MethodMassSpec">MethodMassSpec</code>Mass Spec
            - Detecting large amounts of small molecules in solution
            - Understand mass spectra (e.g. oligo sythesis)
        5. <code id="MethodSeq">MethodSeq</code>Sequencing
            - Sanger sequencing
            - NGS - Illumina, PacBio, DNAnanoball,
            - Nanopore
            - Microarrays

<!--section-->

## Structures
4. <code id="Chemistry">Chemistry</code>“From molecules to variables”
    1. <code id="InfoMols">InfoMols</code>What are information bearing molecules? (biopolymer building blocks)
        - nucleic acids (basic features and geometry)
        - proteins/peptides; Protein geometry (alpha helix, ...)
        - Other (PNA, L-DNA, new nucleotides, polysaccharides, block-copolymers, other supramolecular programmable molecules)
        - Information in unordered mixtures of small molecules
    2. <code id="Glue">Glue</code>How do molecules interact (the glue)
        - Chemical bonds and interactions (a primer in chemistry)
        - Intramolecular forces via covalent bonds: peptide bonds, ester bond
        - Intermolecular forces and non-covalent bonds: Van der Waals, hydrogen bond, stacking interactions, electrostatic interactions, Debye screening. (Table with relative bond strengths)
        - Entropic forces: depletion, steric, fractionation, crowding, polymers
    3. <code id="MolN">MolN</code>How can we represent molecules digitally (notation focused)?
        - Structure abstraction layers: Primary, Secondary, Tertiary structure
        - Sequence abstraction layers: domain level vs nucleotide level
        - Notations: Dot parens plus notation, DU+ notation, ...
        - SMILES string for small molecules
        - Notions of “valid” conformations (nearest neighbor model)
        - Intuition behind coarse-grained representations and macrostates
    4. <code id="MolV">MolV</code>How can we represent molecules digitally (visualization focused)?
        - Intuition behind coarse-grained representations and macrostates
        - How can we represent molecules graphically
        - Intro into formal concepts for visualization.
5. <code id="Biomolecules">Biomolecules</code>Molecules as construction material
    1. <code id="DNA">DNA</code>DNA properties
        - data sheet to find useful parameters.
        - Crossover motifs (anti-parallel and parallel)
        - Special motifs (I motif, G-quads, aptamers, triplex, Holliday junctions)
        - Non-Watson-Crick-Franklin base-pairing (wobble etc)
        - Differences between single and double stranded DNA (could be a box) [for example different persistence lengths, inter-basepair lengths].
        - Biophysical influence of buffer conditions on DNA structure
    2. <code id="RNA">RNA</code>RNA properties
        - data sheet to find useful parameters.
        - Special motifs (I motif, G-quads, kissing loops, aptamers, ribozymes)
        - Biophysical influence of buffer conditions on RNA structure and stability
        - Non-cannonical base pairing
    3. <code id="Protein">Protein</code>Protein biochemistry
        - data sheet to find useful parameters.
        - Enzymatic activity and binding pockets, …
        - Special motifs of secondary structure (alpha helices, beta sheets), tertiary structure (fold families like b-barrels etc)
        - Quaternary structure: Multimeric protein complexes
        - Biophysical influence of buffer conditions on enzyme activity and protein structure
    4. <code id="XNA">XNA</code>Non-canonical polymers and interactions (LNA, PNA, XNA, etc)
        - Comparisons of interactions between canonical polymers (DNA/RNA, Protein/RNA binding)
        - Protein Non-canonical amino acids
        - data sheet to find useful parameters...
6. <code id="Biophysics">Biophysics</code>Interfacing biophysical and computational models for analysis and design.
    1. <code id="PP">PP</code>Polymer physics models for nucleic acids and proteins.
        - Static properties
        - Elastic models (FJC, WLC)
        - Transport phenomena (viscosity, diffusion)
    2. <code id="MD">MD</code>Molecular dynamics models.
        <ul>
            <li>Box: coarse grained models for nucleic acids</li>
            <li class="tagged"><code id="proteinMD">proteinMD</code>MD for proteins</li>
        </ul>
    3. <code id="NN">NN</code>The thermodynamic nearest neighbor model.
        - single DNA/RNA molecules
        - multi stranded nucleic acid systems
    4. <code id="NLKin">NLKin</code>Nearest neighbor level stochastic simulations
        - Thermodynamic energy landscapes and their application (and limitations) for Gillespie-type kinetic simulations
    5. <code id="DLKin">DLKin</code>Domain level models  of hybridization, dissociation and branch migration.
        - The ad-hoc approach (based on experimental results)
        - Molecular Dynamics Models (e.g. oxDNA)
        - Secondary Structure Kinetics (with and without the nearest neighbor model, e.g. Dave Zhang 2009 and Niranjan 2013 CRN Models, Multistrand)
    6. <code id="SeqDesign">SeqDesign</code>DNA/RNA Sequence design.
        - Why does sequence design work? -- properties of landscapes (Lenvinthal’s paradox?)
        - Sequence design as an artificial evolution to optimize a landscape.
        - Formulation of a thermodynamic objective function for multistable design.
        - Formulation of combinatorial WCF base-pairing objectives.
        - Incorporation of kinetic objectives into sequence design (possibly with reference to kinetic proofreading.)
    7. <code id="ProteinDesign">ProteinDesign</code>Sequence design of proteins to fold into a specific structure
        - Rational Protein engineering (David Baker, U Washington )
            - Box: theory/tools for rational design
        - Directed Evolution protein engineering (Frances Arnold)
            - Box: Theory of directed evolution
        - Alphafold2 box on learned structure prediction and the protein folding grand challenge
7. <code id="SelfAssembly">SelfAssembly</code>Introduction into molecular self-assembly theory.
    1. <code id="NatAssembly">NatAssembly</code>Principles of natural multi-component self-assembly processes
        - Seeded self-assembly examples: (viruses, lipid micelles, nanowires, crystals, self-assembled monolayer, hydrogels, lipids, block copolymers)
        - Templated self-assembly: the central dogma and its implications for assembly of non-equilibrium structures.
        - Biophysical models: The role of thermal energy driving self-assembly, nucleation, kinetic/thermodynamic control, stoichiometry, cyclisation, stochasticity.
        - Models for proofreading vs. kinetic proofreading.
    2. <code id="TileAssembly">TileAssembly</code>Tile self-assembly
        - Tiling theory as a mathematical theory (Geometry, Wang tiles).
        - A-tam and K-tam.
        - Tiles and algorithmic self assembly, example algorithms
        - Selected models (3D, active tile-assembly, probabilistic…), the problems that led to their creation.
        - Error correction and proofreading strategies
        - Tips, tricks and problems related to nucleic acid sequence design.
8. <code id="DNAstructures">DNAstructures</code>Programmed molecular self-assemblies (experiments)
    1. <code id="AssembledDNA">AssembledDNA</code>Scaffold-less DNA assemblies
        - ss Tiles,
        - dx Tiles
        - HCR
        - Simple polyhedra: Seeman cube, tetrahedron, Yamuna’s icosahedron, Mao’s Bucky ball and octahedron.
    2. <code id="Origami">Origami</code>DNA Origami
        - The concept
        - Design principles, cooperativity
            - Sequence design constraints
        - Design and simulation tools
        - “Wireframe origami” examples 1D / 2D / 3D structures
        - Production and purification
            - Custom scaffold design
            - Thermo/stoichiometry
    3. <code id="MulitComponent">MulitComponent</code>Periodic and Multi component assemblies
        - Shape complementary, base stacking
        - Self-limiting assemblies (rings)
        - Fractal assemblies
        - Lattices, ribbons, nanotubes, and crystals
        - Interlocked assemblies (e.g. origami rotaxanes) -> connection to mechanics
    4. <code id="DynamicDNA">DynamicDNA</code>Dynamic rearrangements of structures
        - DNA tweezers, DNA Walkers, burnt-bridge motor
        - Nanomechanical devices. Mechanical constructs / active components/ machines / walkers (comparison with molecular motors/enzymes)
        - Nanomotors
    5. <code id="ProgrammedRNA">ProgrammedRNA</code>RNA Structures
        - RNA nanoparticles / Tiles
        - Cotranscriptional RNA-Origami
        - Multi-stranded RNA tiling
    6. <code id="ProgrammedProtein">ProgrammedProtein</code>Synthetic Protein Structure
        - Protein Complexes (engineering Protein - protein interactions)
            - [Nanocage self-assembly](https://doi.org/10.1038/nature18010)
    7. <code id="LiquidDNA">LiquidDNA</code>Other phases of DNA structures (Physical properties)
        - DNA hydrogels
        - DNA liquids
        - Coacervates
    8. <code id="SurfaceDNA">SurfaceDNA</code>DNA-grafted structures on surfaces
        - Colloids
        - Polymer/DNA brushes (surface/colloid coatings)
        - Grafted nanoparticles

<!--section-->

## Circuits
9. <code id="Computation">Computation</code>Introduction to Computation
    1. <code id="Computation_intro">Computation_intro</code>Intro to computation / information processing
    2. <code id="conventionalComp">conventionalComp</code>Conventional computation
    3. <code id="CompBackground">CompBackground</code>Background: boolean logic, turing machines, register machines, analog computation nondeterministic finite automata, cellular automata
    4. <code id="unconventionalComp">unconventionalComp</code>Examples of unconventional computing
    5. <code id="naturalComp">naturalComp</code>Examples of natural computing (e.g. neural networks, gene regulatory networks)
    6. <code id="molprogLang">molprogLang</code>Molecular programming languages
    7. <code id="molprogCompil">molprogCompil</code>Compiling molecular programs
10. <code id="CRN">CRN</code>Programming molecular behaviors over time (CRN’s)
    1. <code id="CRN_intro">CRN_intro</code>Introduction
    2. <code id="sCRN">sCRN</code>Computing with Stochastic CRNs
        - Theory example and analysis: min/max and boolean logic programming with CRN’s
        - Biology example: something simple
        - Computational Power of Stochastic CRN
        - Time complexity of stochastic CRN
    3. <code id="CRNdistribution">CRNdistribution</code>Compute with distributions
    4. <code id="dCRN">dCRN</code>Computing with Deterministic CRNs
        - Theory examples: circuits, boolean circuits, oscillators, bistability, etc.
        - Well-mixed CRN’s as example of analog computing
        - Computing functions (e.g. \\(y=kx\\))
        - Approximate majority
        - Dynamic system: Oscillators, bistability
        - Biology example: (predator prey / ecology models)
        - Computational power of deterministic CRNs
    5. <code id="CRN_advanced">CRN_advanced</code>Advanced topics in CRNs
        - Small molecule early work: John Ross (Stanford)
        - Small molecule CRN implementations
        - Small molecule oscillating reactions: BZ reaction (Irving Epstein’s work)
11. <code id="NucleicAcidCircuits">NucleicAcidCircuits</code>Nucleic acids as a universal substrate for molecular programming
    1. <code id="NucleicIntro">NucleicIntro</code>Introduction (reference Foundations for overlapping topics)
        - Reference to Structures section on background: nucleic acid hybridization and thermodynamics
        - Background: nucleic acid branch migration
        - Toehold-mediated strand displacement
        - Experiment examples: toehold exchange reaction
    2. <code id="StrandDisplacementCascades">StrandDisplacementCascades</code>Strand displacement cascades
        1. <code id="DNAforCRNs">DNAforCRNs</code>Theory & experiment: DNA as a universal substrate for CRNs
        2. <code id="EarlyBooleanDSD">EarlyBooleanDSD</code>Boolean circuits: an early example
        3. <code id="DSDsequenceDesign">DSDsequenceDesign</code>Box: DSD sequence design strategies
        4. <code id="ApproxMajorityTwoDomain">ApproxMajorityTwoDomain</code>Approximate majority (two-domain design)
        5. <code id="AmplifyCatalyze">AmplifyCatalyze</code>Amplification and catalysis
        6. <code id="Threshold">Threshold</code>Thresholding
        7. <code id="Seesaw">Seesaw</code>Seesaw circuits
        8. <code id="NucleicNeuralNetworks">NucleicNeuralNetworks</code>Neural networks
        9. <code id="Oscillator">Oscillator</code>Oscillators
    3. <code id="NucleicAdvanced">NucleicAdvanced</code>Advanced designs in DNA strand displacement cascades
        1. <code id="ToeholdActivation">ToeholdActivation</code>Toehold activation
        2. <code id="Mismatches">Mismatches</code>Mismatches: mutation detection and controlling kinetics
        3. <code id="4wDSD">4wDSD</code>Theory & Experiment: 4wDSD circuits
    4. <code id="NucleicLeakless">NucleicLeakless</code>Leakless circuits
        - Why do circuits leak and why leaks are problematic
        - How to avoid leak. Examples of leakless circuits
12. <code id="EnzymeCircuits">EnzymeCircuits</code>Programming behavior with diverse biomolecules
    1. <code id="EnzymeCircuitsIntro">EnzymeCircuitsIntro</code>Introduction
        - Background: enzymatic behaviors
    2. <code id="PolymeraseCircuits">PolymeraseCircuits</code>DNA polymerase-based circuits
        - PEN circuits, predator prey
        - APR, PER circuits (whiplash PCR?)
        - Shah et al. work on logic gates
    3. <code id="TranscriptionalCircuits">TranscriptionalCircuits</code>Transcribed RNA-based circuits
        1. <code id="ToeholdSwitches">ToeholdSwitches</code>Toehold switches
        2. <code id="ConditionalCrispr">ConditionalCrispr</code>Conditional crispr
        3. <code id="Oritatami">Oritatami</code>Oritatami
        4. <code id="Genelets">Genelets</code>Genelets
    4. <code id="ProteinCircuits">ProteinCircuits</code>Protein-based circuits
        - Protein-protein binding circuits
        - Phosphorylation based circuits
    5. <code id="GeneCircuits">GeneCircuits</code>Gene circuits
        1. <code id="GeneLogicGates">GeneLogicGates</code>Logic gates
        2. <code id="GeneOscillators">GeneOscillators</code>Repressilator
        3. <code id="GeneNetworks">GeneNetworks</code>Theory of synthetic gene regulatory networks (incl. Cell-level circuits)
        - References to good syn bio resources?
    6. <code id="SmMolCircuits">SmMolCircuits</code>Small molecule cascades
        - Autocatalytic reactions and applications
13. <code id="SpatiallyOrganizedCircuits">SpatiallyOrganizedCircuits</code>Spatially-Organized Circuits
    1. <code id="SpatialIntro">SpatialIntro</code>Introduction: advantages of spatial structures
    2. <code id="SpatialBackground">SpatialBackground</code>Background: compartmentalization in biology
    3. <code id="SurfaceCRNs">SurfaceCRNs</code>Surface CRNs
        - Surface DNA circuits and DNA walkers
    4. <code id="DropletComputing">DropletComputing</code>Droplet-based computing / “synthetic compartmentalization”
    5. <code id="ReactionDiffusion">ReactionDiffusion</code>Reaction diffusion circuits
    6. <code id="MicrofluidicsBox">MicrofluidicsBox</code>Microfluidics Breakout Box
14. <code id="AdvancedAssembly">AdvancedAssembly</code>Advanced topics in tile assembly (algorithmic self-assembly)
    1. <code id="WangTile">WangTile</code>Wang tile Turing machine implementation?
    2. <code id="TileComplexity">TileComplexity</code>Tile Complexity of shapes and patterns
    3. <code id="ExtendedAssembly">ExtendedAssembly</code>Extended tile-assembly models and their computational power
    4. <code id="ActiveAssembly">ActiveAssembly</code>Nubots, amoebots, turning machines
15. <code id="CircuitsConclusion">CircuitsConclusion</code>Conclusion

<!--section-->

## Interfaces
16. <code id="InterfacesInt">InterfacesInt</code>Introduction to Interfaces & Applications
    1. <code id="InterfacesIntro">InterfacesIntro</code>Intro
    2. <code id="InterfacesPreview">InterfacesPreview</code>General preview of interfaces (and the techniques used) with other fields through
        - Electronic interfacing
        - Chemical and physical interactions
        - Interacting with biology
17. <code id="ElectricInt">ElectricInt</code>The Interface between Traditional and Molecular Computers
    1. <code id="DNAdataIntro">DNAdataIntro</code>Introduction to the electronic interface
        - Pros: lower energy usage, parallelism, physical stability, data density, etc.
        - Cons: expensive at high throughput, etc
    2. <code id="DNAdataStorage">DNAdataStorage</code>DNA Data Storage
        - Encoding data from digital data to DNA (breakout box about considerations of large amounts of chemical waste)
        - Storing DNA
        - Recovering stored DNA
        - Sequencing the DNA
        - Decoding the DNA back to digital data (breakout box about ethics of right to be forgotten)
    3. <code id="DNAdataFuture">DNAdataFuture</code>Emerging/future applications
        - Similarity Search
        - File previewing
        - etc.
18. <code id="ChemPhysInt">ChemPhysInt</code>Chemical and Physical Interactions
    1. <code id="Material">Material</code>Material science
        1. <code id="DNATemplate">DNATemplate</code>DNA as a template for non-DNA molecules
            - Encoding template (e.g., sequence-encoded polymer synthesis)
            - Positioning template (e.g., nanoparticles, nanowires, silicification/mineralization)
            - Framing template (e.g., DNA molds, frame-guided assembly, DNA-assisted liposome/nanodisc assembly)
        2. <code id="SurfaceAssist">SurfaceAssist</code>Surface assisted methods
            - DNA nanostructure placement on surfaces
            - [DNA lithography](https://www.nature.com/articles/s41563-021-00930-7)
            - Large lattices
    2. <code id="ChemCtrl">ChemCtrl</code>Chemical control
    3. <code id="MagCtrl">MagCtrl</code>Magnetic control
        - Fundamentals of magnetic control at the nanoscale (swimmers, beads)
        - Magnetic control of molecular systems (DNA origami)
    4. <code id="OptCtrl">OptCtrl</code>Optical control
        - Primer on optical materials
        - [DNA plasmonic and photonic circuits](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6546600/)
        - Dynamic control of optical DNA devices
    5. <code id="ThemCtrl">ThemCtrl</code>Thermal control
        - Thermal control of duplex
        - Thermal control of stacking and shape complementarity
        - Thermo-responsive materials
        - Engineering thermodynamic landscape of DSD
    6. <code id="ElecCtrl">ElecCtrl</code>Electrical control
        - Electric field-based control
        - DNA-nanopore interface
        - [Redox power source](http://www.francescoriccilab.com/wp-content/uploads/92.pdf)
    7. <code id="ChemPhysAdv">ChemPhysAdv</code>Advanced topics and future directions
        - DNA as a material
        - crowding agents
19. <code id="BioInt">BioInt</code>Interacting with Biology, Medical Diagnostics and Therapeutics
    1. <code id="BioPrimer">BioPrimer</code>Biology toolbox primers - topics not included in Foundations primer
        - Cutting DNA (e.g., restriction enzymes, CRISPR, ribozymes?; talk about synbio gene editing using CRISPR and other restriction enzymes)
        - Potential Topics: gene regulatory networks, DNA-replication/repair, Splicing, CRISPr. Molecules: telomerase, gyrase. RNA switches (subject to requirements set out by other sections)
        - Tools for Biological Discovery (subject to requirements in next sections)
            - DNA paint (will be referenced in foundations)
            - FISH
            - DNA SPR (probably will be in diagnostics)
    2. <code id="Diag">Diag</code>Diagnostics
        - How do current diagnostics work [primer on various techniques, biomarkers]
            - Which particular diseases will benefit from in-depth diagnostics?  Why do we need to know about so many biomarkers?
        - Why are some molecules difficult to detect?  What are the advantages of DNA nanotech methods over the standard techniques?
        - Methods
            - Aptamers - How can we program DNA to bind with targets other than DNA/RNA? [primer/external reference on selex]
            - Antibodies
            - toeholds
            - electrochemical/fluorescence
            - SPR (surface plasmon resonance) and QCM (quartz crystal microbalance) and FET (field effect transistor)
            - etc.
    3. <code id="Therapy">Therapy</code>Therapy
        1. <code id="NucAcidTher">NucAcidTher</code>Programmable nucleic acids-based therapeutics
            - Protein production silencing or activation – mRNA mimics, siRNA etc. (Pfizer/Moderna vaccines are real-world examples of this). [primer/external reference on transcription/translation]
            - Aptamer therapeutics
        - Protection of therapeutic agents e.g. tetrahedron structures.
            - Different protection methods for nucleic acid nanostructures (e.g., polylysine, protein, lipid, etc.)
        - Examples of approved or under-trial DNA nanotech drugs.
        2. <code id="DrugDel">DrugDel</code>Drug Delivery
            - Why is it beneficial to have targeted delivery of drugs in the body?
            - How are drugs loaded onto DNA structures?  Various examples available.
            - Mechanisms for release of drugs in particular areas of the body.
        - [Protein binding logic gates for targeted drug delivery](https://doi.org/10.1038/s41586-019-1432-8)
    4. <code id="BurgInt">BurgInt</code>Burgeoning biological interfaces
        - Cellular interactions Communicating with cells and cell surfaces
            - Why do we want to create artificial cell signal controllers? [primer/external reference on cell signalling systems]
            - DNA nanotech channel receptor mimics (various versions using DNA origami; include lipid bilayer section here)
                - [example](https://www.cell.com/trends/biotechnology/fulltext/S0167-7799(21)00034-2)
        - Cell-mediated adhesion
        - Replicating cellular components
        - Proteinosomes - will try to include, but depends on content of this chapter
    5. <code id="BioMediumChall">BioMediumChall</code>Challenges in working in a biological medium
        - Dealing with toxicity
        - Preventing degradation – [primer or external links to well-known DNA modifications and their functionality, use of XNAs?]
        - Examples of Chemical modifications, ligand attachments and encapsulating protection (nanoparticles)
        - How to scale up “bio factories”, using cells to manufacture molecules is difficult
        - Cell-free extracts
    6. <code id="Ethics">Ethics</code>Regulation & Ethics - breakout box
        - High level overview of the general international medical regulatory processes, with some specific examples from, e.g., the FDA approval process
        - Maybe briefly mention other regulatory processes for, e.g., synthetic crops
        - Biosafety/biosecurity
