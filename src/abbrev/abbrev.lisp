(in-package :bib)
 
(defun journal-name-equalp (a b)
  (equalp (trim (regex-replace-all "\\s+" a " "))
	  (trim (regex-replace-all "\\s+" b " "))))

(defun find-journal (name)
  (find name *abbrev-list* :key #'first :test #'journal-name-equalp))

