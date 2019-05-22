(in-package :bib)

(defparameter *abbrev-table* (make-hash-table :test #'equalp))

(loop for journal in *abbrev-list*
      do(setf (gethash (first journal) *abbrev-table*)
	      (second journal)))
			   
(defun find-journal (name)
  (let* ((name (regex-replace-all "\\s+" name " "))
	 (abbrev (gethash name *abbrev-table*)))
    (if (null abbrev)
	nil
	(list name abbrev))))

(defun search-journal (string)
  (loop for journal being the hash-key of *abbrev-table*
	if (scan (create-scanner string :case-insensitive-mode t)
		 journal)
	  collect journal))

(defun list-journal ()
  (loop for journal being the hash-key of *abbrev-table*
	collect journal))

