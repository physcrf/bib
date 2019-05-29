(defsystem :bib
  :description "Common Lisp utility for bibtex"
  :version "0.01"
  :author "Chen Ruofan <physcrf@qq.com>"
  :depends-on (:utility  ;; https://github.com/physcrf/utility
	       :string   ;; https://github.com/physcrf/string
	       :os	 ;; https://github.com/physcrf/os
	       :cl-ppcre ;; https://edicl.github.io/cl-ppcre/
	       :grefs	 ;; https://github.com/physcrf/grefs
	       )
  :components ((:module "src"
		:serial t
		:components ((:file "package")
			     (:file "bib")
			     (:file "aux")
			     (:module "abbrev"
			      :serial t
			      :components ((:file "a")
					   (:file "b")
					   (:file "c")
					   (:file "d")
					   (:file "e")
					   (:file "f")
					   (:file "g")
					   (:file "h")
					   (:file "i")
					   (:file "j")
					   (:file "k")
					   (:file "l")
					   (:file "m")
					   (:file "n")
					   (:file "o")
					   (:file "p")
					   (:file "q")
					   (:file "r")
					   (:file "s")
					   (:file "t")
					   (:file "u")
					   (:file "v")
					   (:file "w")
					   (:file "x")
					   (:file "y")
					   (:file "z")
					   (:file "abbrev")
					   )
				      )
			     )
			)
	       )
  )
			     
