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
    (reverse list)))

(defun bibitem-type (bibitem)
  (erase-string (scan-to-strings "@[a-zA-Z]+" bibitem) 0 1))

(defun bibitem-id (bibitem)
  (let* ((id (scan-to-strings "{\\s*\\S+\\s*," bibitem))
	 (length (strlen id))
	 (id (trim (substr id 1 (1- length)))))
    (regex-replace "^@" id "")))

(defun split-fields (fields)
  (let ((start 0)
	(length (strlen fields))
	bracket
	list)
    (loop for i from 0 below length
	  if (char= (char fields i) #\{)
	    do (push #\{ bracket)
	  if (char= (char fields i) #\})
	    do (pop bracket)
	  if (or (and (char= (char fields i) #\,)
		      (null bracket))
		 (= i (1- length)))
	    do (let ((str (substr fields start i)))
		 (setf start (1+ i))
		 (unless (blankp str)
		   (appendf list (list (trim str))))))
    list))

(defun bibitem-fields (bibitem)
  (let* ((start (nth-value 1 (scan "{\\s*\\S+\\s*," bibitem)))
	 (end (position #\} bibitem :from-end t :test #'char=))
	 (fields (substr bibitem start end))
	 (fields (split-fields fields))
	 list)
    (flet ((clean (value)
	     (let* ((value (regex-replace "^\\s*{" value ""))
		    (value (regex-replace "}\\s*$" value ""))
		    (value (regex-replace-all "[\\n\\r]\\s*" value "\\n"))
		    (value (trim value)))
	       value)))
      (loop for field in fields
	    for (key value) = (split "=" field)
	    do (appendf list (list (trim key)
				   (clean value)))))
    list))
    
(defun parse-bibitem (bibitem)
  (let (list)
    (appendf list (list "TYPE" (bibitem-type bibitem)))
    (appendf list (list "ID" (bibitem-id bibitem)))
    (appendf list (bibitem-fields bibitem))
  list))
	     
(defun parse-bibfile (bibfile)
  (mapcar #'parse-bibitem (split-bibfile bibfile)))

(defun format-bibitem (bibitem)
  (let ((stream (make-string-output-stream)))
    (format stream "@~A{" (gref bibitem "TYPE"))
    (format stream "~A,~%" (gref bibitem "ID"))
    (loop for (key value) on (cddddr bibitem) by #'cddr
	  do (format stream "~2T~A~14T=" key)
	  do (format stream (strcat "~20T{"
				    (regex-replace-all "\\\\n" value "~%~21T")
				    "},~%")))
    (format stream "}~%")
    (get-output-stream-string stream)))
