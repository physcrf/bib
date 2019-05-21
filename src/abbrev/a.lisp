(in-package :bib)

;; http://www.rci.rutgers.edu/~longhu/ChemJournalAbbreviation_Hu.htm
(defparameter *abbrev-list-a*
  '(("Accounts of Chemical Research"		"Acc. Chem. Res.")
    ("ACH - Models in Chemistry"		"ACH - ModelsA Chem.")
    ("ACI Materials Journal"			"ACI Mater. J.")
    ("ACS Symposium Series"			"ACS Symp. Ser.")
    ("Acta Biochimica Polonica"			"Acta Biochim. Pol.")
    ("Acta Biotechnologica"			"Acta Biotechnol.")
    ("Acta Chemica Scandinavica"		"Acta Chem. Scand.")
    ("Acta Chimica Sinica" 			"Acta Chim. Sinica")
    ("Acta Cienceia Indica Chemistry" 		"Acta Cienc. Indica, Chem.")
    ("Acta Ciencia Indica Phyics" 		"Acta Cienc. Indica, Phys.")
    ("Acta Crystallographica Section A"		"Acta Crystallogr., Sect. A")
    ("Acta Crystallographica Section B"		"Acta Crystallogr., Sect. B")
    ("Acta Crystallographica Section C"		"Acta Crystallogr., Sect. C")
    ("Acta Crystallographica Section D"		"Acta Crystallogr., Sect D")
    ("Acta Crystallographica Section E Structure Reports Online" "Acta Crystallogr. Sect. E: Struct. Rep. Online")
    ("Acta Hydrochimica et Hydrobiologica"	"Acta Hydroch. Hydrob.")
    ("Acta Materialia"				"Acta Mater.")
    ("Acta Metallurgica"			"Acta Metall.")
    ("Acta Physica Polonica A"			"Acta Phys. Pol., A")	
    ("Acta Physica Polonica B"			"Acta Phys. Pol., B")
    ("Acta Polymerica"				"Acta Polym.")
    ("Acta Polytechnica Scandinavica - Chemical Technology Series" "Acta Polytech. Scand., Chem. Technol. Ser")
    ("Adhesives Age"				"Adhes. Age")
    ("Adsorption Science and Technology"	"Adsorpt. Sci. Technol.")
    ("Advances in Applied Microbiology"		"Adv. Appl. Microbiol.")
    ("Advances in Atomic Molecular and Optical Physics" "Adv. At. Mol. Opt. Phy.")
    ("Advances in Biochemical Engineering / Biotechnology" "Adv. Biochem. Eng./Biotechnol.")
    ("Advances in Carbohydrate Chemistry and Biochemistry" "Adv. Carbohydr. Chem. Biochem.")
    ("Advances in Chemical Physics"		"Adv. Chem. Phys.")
    ("Advances in Chemistry Series"		"Adv. Chem. Ser.")
    ("Advances in Chromatography"		"Adv. Chromatogr.")
    ("Advances in Colloid and Interface Science" "Adv. Colloid Interface Sci.")
    ("Advanced Composite Materials"		"Adv. Compos. Mater")
    ("Advances in Cryogenic Engineering"	"Adv. Cryog. Eng.")
    ("Advanced Engineering Materials"		"Adv. Eng. Mater.")
    ("Advances in Enzyme Regulation"		"Adv. Enzyme Regul.")
    ("Advances in Enzymology and Related Areas of Molecular Biology" "Adv. Enzymol. Relat. Areas Mol. Biol.")
    ("Advances in Filtration and Separation Technology" "Adv. Filtr. Sep. Technol.")
    ("Advanced Functional Materials"		"Adv. Funct. Mater.")
    ("Advances in Heterocyclic Chemistry"	"Adv. Heterocycl. Chem.")
    ("Advances in Inorganic Chemistry"		"Adv. Inorg. Chem.")
    ("Advances in Mass Spectrometry"		"Adv. Mass Spectrom.")
    ("Advanced Synthesis and Catalysis"		"Adv. Synth. Catal.")
    ("Advanced Materials"			"Adv. Mater.")
    ("Advanced Materials for Optics and Electronics" "Adv. Mater. Opt. Electron.")
    ("Advanced Materials and Processes"		"Adv. Mater. Processes")
    ("Advances in Materials Research"		"Adv. Mater. Res.")
    ("Advances in Organometallic Chemistry"	"Adv. Organomet. Chem.")
    ("Advances in Physical Organic Chemistry"	"Adv. Phys. Org. Chem.")
    ("Advances in Polymer Science"		"Adv. Polym. Sci.")
    ("Advances in Polymer Technology"		"Adv. Polym. Tech.")
    ("Advanced Powder Technology"		"Adv. Powder Technol.")
    ("Advances in Powder Metallurgy and Particulate Materials" "Adv. Powder. Metall. Part. Mater.")
    ("Advances in Protein Chemistry"		"Adv. Protein Chem.")
    ("Advances in Quantum Chemistry"		"Adv. Quantum Chem.")
    ("Advances in Second Messenger and Phosphoprotein Research" "Adv. Second Messenger Phosphoprotein Res.")
    ("Advances in Space Research"		"Adv. Space Res.")
    ("Advances in X-Ray Analysis"		"Adv. X-Ray Anal.")
    ("Adverse Drug Reactions and Toxicological Reviews" "Adverse Drug React. Toxicol. Rev.")
    ("Aerosol Science and Technology"		"Aerosol Sci. Technol.")
    ("AIChE Journal"				"AlChE J.")
    ("AIChE Symposium Series"			"AlChE Symp. Ser.")
    ("American Ceramic Society Bulletin"	"Am. Ceram. Soc. Bull.")
    ("American Industrial Hygiene Association Journal" "Am. Ind. Hyg. Assoc. J.")
    ("American Journal of Respiratory Cell and Molecular Biology" "Am. J. Respir. Cell Mol. Biol.")
    ("American Laboratory"			"Am. Lab.")
    ("American Mineralogist"			"Am. Mineral.")
    ("Ammonia Plant Safety and Related Facilities" "Ammonia Plant Saf. Relat. Facil")
    ("Anales de la Asociacion Quimica Argentina" "An. Asoc. Quim. Argent.")
    ("Anales de Quimica"			"An. Quim.")
    ("Analytical Biochemistry"			"Anal. Biochem.")
    ("Analytical Chemistry"			"Anal. Chem.")
    ("Annali di Chimica"			"Anal. Chim.")
    ("Analytica Chimica Acta"			"Anal. Chim. Acta")
    ("Analytical Communications"		"Anal. Commun.")
    ("Analytical Letters"			"Anal. Lett.")
    ("Analytical Sciences"			"Anal. Sci.")
    ("Angewandte Chemie International Edition"	"Angew. Chem. Int. Ed.")
    ("Angewandte Makromolekulare Chemie"	"Angew. Makromol. Chem.")
    ("Annali di Chimica"			"Ann. Chim. (Rome)")
    ("Annales de Chimie - Science des Materiaux" "Ann. Chim. - Sci. Mat.")
    ("Annals of Clinical Biochemistry"		"Ann. Clin. Biochem.")
    ("Annals of the New York Academy of Sciences" "Ann. N.Y. Acad. Sci.")
    ("Annual Reports in Medicinal Chemistry"	"Annu. Rep. Med. Chem.")
    ("Annual Reports on the Progress of Chemistry, Section A" "Annu. Rep. Prog. Chem. Sect. A")
    ("Annual Reports on the Progress of Chemistry, Section B" "Annu. Rep. Prog. Chem. Sect. B")
    ("Annual Reports on the Progress of Chemistry, Section C" "Annu. Rep. Prog. Chem. Sect. C")
    ("Annual Review of Biochemistry"		"Annu. Rev. Biochem")
    ("Annual Review of Biophysics and Biomolecular Structure" "Annu. Rev. Biophys. Biomol. Struct.")
    ("Annual Review of Cell and Developmental Biology" "Annu. Rev. Cell Dev. Biol.")
    ("Annual Review of Energy and the Environment" "Annu. Rev. Energy Env.")
    ("Annual Review of Materials Science"	"Annu. Rev. Mater. Sci.")
    ("Annual Review of Pharmacology and Toxicology" "Annu. Rev. Pharmacool. Toxicol.")
    ("Annual Review of Physical Chemistry"	"Annu. Rev. Phys. Chem.")
    ("Anti-Cancer Drug Design"			"Anti-Cancer Drug Des.")
    ("Anticancer Research"			"Anticancer Res.")
    ("Antimicrobial Agents and Chemotherapy"	"Antimicrob. Agents Chemother.")
    ("Antisense and Nucleic Acid Drug Development" "Antisense Nucleic Acid Drug Dev.")
    ("Antiviral Chemistry and Chemotherapy"	"Antiviral Chem. Chemother.")
    ("Antiviral Research"			"Antiviral Res.")
    ("Appita Journal"				"Appita J.")
    ("Applied Biochemistry and Biotechnology"	"Appl. Biochem. Biotechnol.")
    ("Applied Catalysis A"			"Appl. Catal., A")
Appl. Catal., B	Applied Catalysis B
Appl. Compos. Mater.	Applied Composite Materials
Appl. Environ. Microbiol.	Applied and Environment Microbiology
Appl. Geochem.	Applied Geochemistry
Appl. Magn. Reson.	Applied Magnetic Resonance
Appl. Microbiol. Biotechnol.	Applied Microbiology and Biotechnology
Appl. Opt.	Applied Optics
Appl. Organomet. Chem.	Applied Organometallic Chemistry
Appl. Phys. A	Applied Physics A
Appl. Phys. B	Applied Physics B
Appl. Phys. Lett.	Applied Physics Letters
Appl. Radiat. Isot.	Applied Radiation and Isotopes
Appl. Sci. Res.	Applied Scientific Research
Appl. Spectrosc.	Applied Spectroscopy
Appl. Supercond.	Applied Superconductivity
Appl. Surf. Sci.	Applied Surface Science
Appl. Therm. Eng.	Applied Thermal Engineering
Aquat. Toxicol.	Aquatic Toxicology
Arch. Biochem. Biophys.	Archives of Biochemistry and Biophysics
Arch. Environ. Contam. Toxicol.	Archives of Environment Contamination and Toxicology
Arch. Environ. Health	Archives of Environment Health
Arch. Insect Biochem. Physiol.	Archives of Insect Biochemistry and Physiology
Arch. Microbiol.	Archives of Microbiology
Arch. Pharm.	Archiv der Pharmazie
Arch. Pharmacal Res.	Archives of Pharmacal Research
Arch. Physiol. Biochem.	Archives of Physiology and Biochemistry
Arch. Toxicol.	Archives of Toxicology
Arch. Virol	Archives of Virology
Artif. Cells, Blood Substitues, Immobilization Biotechnol.	Artificial Cells Blood Substitutes and Immobilization Biotechnology
Arzneim.-Forsch.	Arzneimittel-Forschung/Drug Research
Asian J. Chem.	Asian Journal of Chemistry
Asian J. Spectro.	Asian Journal of Spectroscopy
ASTM Spec. Tech. Publ.	ASTM Specical Technical Publication
Astron. Astrophys.	Astronomy and Astrophysics
Astron. J.	Astronomy Journal
Astrophys J.	Astrophysics Journal
At. Data Nucl. Data Tables	Atomic Data and Nuclear Data Tables
At. Energ.	Atomic Energy
At. Spectrosc.	Atomic Spectroscopy
Atmos. Environ.	Atmospheric Environment
Atomization Sprays	Atomization and Sprays
Aust. J. Chem.	Australian Journal of Chemistry
