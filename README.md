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

