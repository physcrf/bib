(in-package :bib)

(defun parse-auxfile (auxfile)
  (flet ((bibcitep (line)
	   (scan "^\\\\bibcite" line))
	 (key-from-bibcite (bibcite)
	   (let* ((str (scan-to-strings "{.+?}" bibcite))
		  (len (strlen str)))
	     (substr str 1 (1- len)))))
    (let* ((lines (read-file-lines auxfile))
	   (bibcites (remove-if-not #'bibcitep lines)))
      (mapcar #'key-from-bibcite bibcites))))
       
      
(defun new-bib-from-aux (auxfile bibfile)
  (let ((bibfile (strcat (basename auxfile ".aux") ".bib"))
	(bibitems (parse-bibfile bibfile))
	(auxitems (parse-auxfile auxfile)))
    (with-output-file (stream bibfile)
      (loop for key in auxitems
	    for bibitem = (find-bibitem key bibitems)
	    do (format stream "~A{~A,~%~A}~%~%"
		       (first bibitem)
		       (second bibitem)
		       (third bibitem))))))
		       
