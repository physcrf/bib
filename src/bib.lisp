(in-package :bib)

(defun split-bibfile (bibfile)
  (let* ((str (read-file-string bibfile))
	 (len (strlen str))
	 (list nil))
    (loop for start from 0 below len
	  if (eql (aref str start) #\@)
	    do (let ((end (let ((flag nil)
				(bracket nil))
			    (loop for j from start
				  if (eql (aref str j) #\{)
				    do (setf flag t)
				  if (eql (aref str j) #\{)
				    do (push #\{ bracket)
				  if (eql (aref str j) #\})
				    do (pop bracket)
				  if (and flag (null bracket))
				    return (1+ j)))))
		 (push (substr str start end) list)
		 (setf start end)))
    list))

(defun bibitem-type (bibitem)
  (scan-to-strings "@[a-zA-Z]+" bibitem))

(defun bibitem-id (bibitem)
  (let* ((id (scan-to-strings "{\\s*\\S+\\s*," bibitem))
	 (length (strlen id)))
    (trim (substr id 1 (1- length)))))
    
(defun bibitem-fields (bibitem)
  (let* ((start (nth-value 1 (scan "{\\s*\\S+\\s*," bibitem)))
	 (end (loop for i from (1- (strlen bibitem)) downto start
		    if (char= (char bibitem i) #\})
		      return i))
	 (fields (mapcar #'trim (split "," (substr bibitem start end))))
	 list)
    (loop for field in fields
	  for (key value) = (split "=" field)
	  do (appendf list (list (trim key)
				 (trim
				  (regex-replace-all "[\\n\\r]\\s+" value "\\n")))))
    list))
    
