(in-package :bib)

(defparameter *abbrev-table* (make-hash-table :test #'equalp))

(loop for journal in *abbrev-list*
      do(setf (gethash (first journal) *abbrev-table*)
	      (second journal)))
			   
(defun find-journal (name)
  (let* ((name (trim (regex-replace-all "\\s+" name " ")))
	 (abbrev (gethash name *abbrev-table*)))
    (if (null abbrev)
	nil
	(list name abbrev))))

(defun search-journal (string)
  (loop for journal being the hash-key of *abbrev-table*
	if (scan (create-scanner string :case-insensitive-mode t)
		 journal)
	  collect journal))

(defun list-journals ()
  (loop for journal being the hash-key of *abbrev-table*
	collect journal))

(defun add-journal (journal)
  (destructuring-bind (name abbrev) journal
    (setf (gethash (trim (regex-replace-all "\\s+" name " ")) *abbrev-table*)
	  abbrev)))

(defun add-journals (journals)
  (loop for journal in journals
	do (add-journal journal)))

(defun format-bibitem-abbrev (bibitem)
  (let* ((item (copy-list bibitem))
	 (name (getf+ item "journal" :test #'equalp))
	 (journal (find-journal name)))
    (if journal
	(progn (setf (getf+ item "journal" :test #'equalp)
		     (second journal))
	       (format-bibitem item))
	nil)))
    
