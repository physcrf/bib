(defpackage :bib
  (:use :cl :utility :string :os :cl-ppcre :grefs)
  (:export :parse-bibfile :format-bibitem :format-bibitem-abbrev
	   :parse-auxfile
	   :find-journal :search-journal
	   :list-journals :add-journal :add-journals
	   :*abbrev-table*))
	   
