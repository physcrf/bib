(defsystem :bib
  :description "Common Lisp utility for bibtex"
  :version "0.01"
  :author "Chen Ruofan <physcrf@qq.com>"
  :depends-on (:utility  ;; https://github.com/physcrf/utility
	       :string   ;; https://github.com/physcrf/string
	       :os	 ;; https://github.com/physcrf/os
	       :cl-ppcre ;; https://edicl.github.io/cl-ppcre/
	       )
  :components ((:module "src"
		:serial t
		:components ((:file "package")
			     (:file "bib")
			     (:file "aux")))
			     
	       ))
