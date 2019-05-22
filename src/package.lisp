(defpackage :bib
  (:use :cl :utility :string :os :cl-ppcre :gref)
  (:export :parse-bibfile :format-bibitem
	   :find-journal :search-journal
	   :list-journals :add-journal :add-journals
	   :*abbrev-table*))
	   
