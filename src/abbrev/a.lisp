(in-package :bib)

;; http://www.rci.rutgers.edu/~longhu/ChemJournalAbbreviation_Hu.htm
(defparameter *abbrev-list*
  '(("ACH - Models in Chemistry"		"ACH - Models Chem.")
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
    ("Advances in Applied Ceramics"		"Adv. Appl. Ceram.")
    ("Advances in Biochemical Engineering / Biotechnology" "Adv. Biochem. Eng./Biotechnol.")
    ("Advances in Carbohydrate Chemistry and Biochemistry" "Adv. Carbohydr. Chem. Biochem.")
    ("Advances in Chemical Physics"		"Adv. Chem. Phys.")
    ("Advances in Chemistry Series"		"Adv. Chem. Ser.")
    ("Advances in Chromatography"		"Adv. Chromatogr.")
    ("Advances in Colloid and Interface Science" "Adv. Colloid Interface Sci.")
    ("Advanced Composite Materials"		"Adv. Compos. Mater")
    ("Advances in Cryogenic Engineering"	"Adv. Cryog. Eng.")
    ("Adverse Drug Reactions and Toxicological Reviews" "Adverse Drug React. Toxicol. Rev.")
    ("Advanced Engineering Materials"		"Adv. Eng. Mater.")
    ("Advanced Functional Materials"		"Adv. Funct. Mater.")
    ("Advances in Enzyme Regulation"		"Adv. Enzyme Regul.")
    ("Advances in Enzymology and Related Areas of Molecular Biology" "Adv. Enzymol. Relat. Areas Mol. Biol.")
    ("Advances in Filtration and Separation Technology" "Adv. Filtr. Sep. Technol.")
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
    ("Advances in Powder Metallurgy and Particulate Materials" "Adv. Powder. Metall. Part. Mater.")
    ("Advances in Protein Chemistry"		"Adv. Protein Chem.")
    ("Advances in Physics"			"Adv. Phys.")
    ("Advances in Quantum Chemistry"		"Adv. Quantum Chem.")
    ("Advances in Second Messenger and Phosphoprotein Research" "Adv. Second Messenger Phosphoprotein Res.")
    ("Advances in Space Research"		"Adv. Space Res.")
    ("Advances in X-Ray Analysis"		"Adv. X-Ray Anal.")
    ("Advanced Powder Technology"		"Adv. Powder Technol.")
    ("AEC Research and Development Report"	"AEC Res. Dev. Rep.")
    ("Aerosol Science and Technology"		"Aerosol Sci. Technol.")
    ("AIChE Journal"				"AlChE J.")
    ("AIChE Symposium Series"			"AlChE Symp. Ser.")
    ("AIP Advances" 				"AIP Adv.")
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
    ("Annals of Physics"			"Ann. Phys.")
    ("Annals of the New York Academy of Sciences" "Ann. N.Y. Acad. Sci.")
    ("Annalen der Physik"			"Ann. Phys. (Leipzig)")
    ("Annual Review of Condensed Matter Physics" "Ann. Rev. Condens. Matter Phys.")
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
    ("Applied Catalysis B"			"Appl. Catal., B")
    ("Applied Composite Materials"		"Appl. Compos. Mater.")
    ("Applied and Environment Microbiology"	"Appl. Environ. Microbiol.")
    ("Applied Geochemistry"			"Appl. Geochem.")
    ("Applied Magnetic Resonance"		"Appl. Magn. Reson.")
    ("Applied Microbiology and Biotechnology"	"Appl. Microbiol. Biotechnol.")
    ("Applied Optics"				"Appl. Opt.")
    ("Applied Organometallic Chemistry"		"Appl. Organomet. Chem.")
    ("Applied Physics A"			"Appl. Phys. A")
    ("Applied Physics B"			"Appl. Phys. B")
    ("Applied Physics Letters"			"Appl. Phys. Lett.")
    ("Applied Radiation and Isotopes"		"Appl. Radiat. Isot.")
    ("Applied Scientific Research"		"Appl. Sci. Res.")
    ("Applied Spectroscopy"			"Appl. Spectrosc.")
    ("Applied Superconductivity"		"Appl. Supercond.")
    ("Applied Surface Science"			"Appl. Surf. Sci.")
    ("Applied Thermal Engineering"		"Appl. Therm. Eng.")
    ("Aquatic Toxicology"			"Aquat. Toxicol.")
    ("Archives of Biochemistry and Biophysics"	"Arch. Biochem. Biophys.")
    ("Accounts of Chemical Research"		"Acc. Chem. Res.")
    ("Archives of Environment Contamination and Toxicology" "Arch. Environ. Contam. Toxicol.")
    ("Archives of Environment Health"		"Arch. Environ. Health")
    ("Archives of Insect Biochemistry and Physiology" "Arch. Insect Biochem. Physiol.")
    ("Archives of Microbiology"			"Arch. Microbiol.")
    ("Archiv der Pharmazie"			"Arch. Pharm.")
    ("Archives of Pharmacal Research"		"Arch. Pharmacal Res.")
    ("Archives of Physiology and Biochemistry"	"Arch. Physiol. Biochem.")
    ("Archives of Toxicology"			"Arch. Toxicol.")
    ("Archives of Virology"			"Arch. Virol.")
    ("Artificial Cells Blood Substitutes and Immobilization Biotechnology" "Artif. Cells, Blood Substitues, Immobilization Biotechnol.")
    ("Arzneimittel-Forschung/Drug Research"	"Arzneim.-Forsch.")
    ("Asian Journal of Chemistry"		"Asian J. Chem.")
    ("Asian Journal of Spectroscopy"		"Asian J. Spectro.")
    ("ASTM Specical Technical Publication"	"ASTM Spec. Tech. Publ.")
    ("Astronomy and Astrophysics"		"Astron. Astrophys.")
    ("Astronomy Journal"			"Astron. J.")
    ("Astrophysics Journal"			"Astrophys J.")
    ("Atomic Data and Nuclear Data Tables"	"At. Data Nucl. Data Tables")
    ("Atomic Energy"				"At. Energ.")
    ("Atomic Spectroscopy"			"At. Spectrosc.")
    ("Atmospheric Environment"			"Atmos. Environ.")
    ("Atomization and Sprays"			"Atomization Sprays")
    ("Australian Journal of Chemistry"		"Aust. J. Chem.")))
