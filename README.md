# bib
A simple bibtex parser in Common Lisp

## Introduction
This [bib](https://github.com/physcrf/bib) is a simple in Common Lisp.
Note that it is *not* a full functional parser that `@STRING`,
`@PREAMBLE` and `@COMMENT` in bibtex is *not* supported for
simplicity. However, they are seldom met in bibtex file writing, at
least for me. 

## Parse Bibfile
### [function] parse-bibfile (bibfile)
This function parse a bibfile into a property list.

Examples:
```cl
(parse-bibfile "bibtex.bib") ;; =>
(("TYPE" "article" 
  "ID" "becke1990-simple" 
  "author" "A. D. Becke and K. E. Edgecombe" 
  "title" "A Simple Measure of Electron Localization in Atomic\\nand Molecular Systems"
 "journal" "The Journal of Chemical Physics" 
 "volume" "92" 
 "number" "9" 
 "pages" "5397-5403" 
 "year" "1990" 
 "doi" "10.1063/1.458517" 
 "url" "https://doi.org/10.1063/1.458517" 
 "DATE_ADDED" "Fri May 10 15:34:56 2019")
 ("TYPE" "article"
 ...)
 ...)
```

It is in fact a generalized property list that its elements are string
rather than symbol, you may use `getf+` in
[gref](https://github.com/physcrf/gref) to access them.

### [function] parse-auxfile (auxfile)
This function extracts citation keys from `.aux` file.

Examples:
```cl
(parse-auxfile "a.aux") ;; => ("becke1990-simple" ... )
```

### [function] format-bibitem (bibitem)
This function format a bibitem into a string of bibtex file format.

Examples:
```cl
(defparameter item (car (parse-bibfile "papers.bib")))
item ;; =>
("TYPE" "article" 
 "ID" 
 "leinders2015-accur" 
 "author"
 "Gregory Leinders and Thomas Cardinaels and Koen\\nBinnemans and Marc Verwerft"
 "title"
 "Accurate Lattice Parameter \\& Measurements of\\nStoichiometric Uranium Dioxide"
 "journal" "Journal of Nuclear Materials" 
 "volume" "459" 
 "number" "nil" 
 "pages" "135-142" 
 "year" "2015" 
 "doi" "10.1016/j.jnucmat.2015.01.029" 
 "url" "https://doi.org/10.1016/j.jnucmat.2015.01.029" "DATE_ADDED"
 "Fri Apr 27 16:30:35 2018")

(format-bibitem item) ;; =>
"@article{leinders2015-accur,
  author      =     {Gregory Leinders and Thomas Cardinaels and Koen
                     Binnemans and Marc Verwerft},
  title       =     {Accurate Lattice Parameter \\& Measurements of
                     Stoichiometric Uranium Dioxide},
  journal     =     {Journal of Nuclear Materials},
  volume      =     {459},
  number      =     {nil},
  pages       =     {135-142},
  year        =     {2015},
  doi         =     {10.1016/j.jnucmat.2015.01.029},
  url         =     {https://doi.org/10.1016/j.jnucmat.2015.01.029},
  DATE_ADDED  =     {Fri Apr 27 16:30:35 2018},
}
"
```

## Abbreviations of Journals
Sometimes it is preferred to use abbreviation of journal in citation
and this package provides some utilities handling this problem.

### [hash table]  *abbrev-table*
This hash table contains [a collection of
abbreviations](physcrf.github.io/abbrev). Its keys are full journal
names and the corresponding value is the abbreviation.

### [function] add-journal (journal)
If you cannot find the specified journal in `*abbrev-table*`, you can
use this function to add one. Note that `journal` should be a two
elements list whose first element is the journal's full name and
second element is the abbreviation. The name is case insensitive.

Examples:
```cl
(add-journal '("Physical Review B" "Phys. Rev. B"))
```

### [function] add-journals (journals)
Add a list of journal name and abbreviations.

### [function] find-journal (journal)
This function find the abbreviation of a journal and returns a list of
journal name and abbreviation. If the name of journal is not in
`*abbrev-table*` then it would return `nil`.

Examples:
```cl
(find-journal "Physical Review B") ;; => ("Physical Review B" "Phys. Rev. B")
(find-journal "something we dont know") ;; => nil
```

### [function] search-journal (journal)
If you don't remember the full name of the journal, you can try this
function. It would search journal whose name contains `journal`.

Examples:
```cl
(search-journal "physical") ;; =>
("Advances in Physical Organic Chemistry" 
 "Annual Review of Physical Chemistry"
 "Berichte der Bunsen-Gesellschaft Physical Chemistry Chemical Physics"
 "Biochemical and Biophysical Research Communications" 
 "Biophysical Chemistry"
 "Biophysical Journal" 
 "International Reviews in Physical Chemistry"
 "Journal of Biochemical and Biophysical Methods"
 "Journal of Physical Chemistry" 
 "Journal of Physical Chemistry A"
 "Journal of Physical Chemistry B"
 "Journal of Physical and Chemical Reference Data"
 "Journal of Physical Organic Chemistry"
 "Journal of the Physical Society of Japan"
 "Microscale Thermophysical Engineering"
 "Nuclear Instruments and Methods in Physical Research Section A"
 "Nuclear Instruments and Methods in Physical Research Section B"
 "Physical Chemistry Chemical Physics" 
 "Physical Review" 
 "Physical Review A"
 "Physical Review B" 
 "Physical Review C" 
 "Physical Review D"
 "Physical Review E" 
 "Physical Review X" 
 "Physical Review Letters"
 "Physical Review Applied" 
 "Proceedings of the Physical Society")
```

### [function] list-journal ()
This function list all journal names in `*abbrev-table*`.

### [function] format-bibitem-abbrev (bibitem)
Similar to `format-bibitem` but would replace journal by its
abbreviation.

Examples:
```cl
(format-bibitem-abbrev item) ;; =>
"@article{leinders2015-accur,
  author      =     {Gregory Leinders and Thomas Cardinaels and Koen
                     Binnemans and Marc Verwerft},
  title       =     {Accurate Lattice Parameter \\& Measurements of
                     Stoichiometric Uranium Dioxide},
  journal     =     {J. Nucl. Mater.},
  volume      =     {459},
  number      =     {nil},
  pages       =     {135-142},
  year        =     {2015},
  doi         =     {10.1016/j.jnucmat.2015.01.029},
  url         =     {https://doi.org/10.1016/j.jnucmat.2015.01.029},
  DATE_ADDED  =     {Fri Apr 27 16:30:35 2018},
}
"
```
