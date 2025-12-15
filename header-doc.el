; header-doc.el
; personal emacs script that allows for easy creation of code file documentation
; at the top of a file. automatically uses the correct comment syntax, depending 
; on the language.
; (C) 12/2025

(defun header-doc-get-mode ()
  (let ((lang-mode-string)
	(lang-mode))
    (setq lang-mode-string (format "%s" major-mode))
    (car (split-string lang-mode-string "-mode"))))

(defun header-doc-get-comment-style ()
  (let ((lang-mode (header-doc-get-mode))
	(comment-prefixes (make-hash-table :test 'equal)))

    ; hashmap containing string used to start a comment
    (puthash "emacs-lisp"       ";"  comment-prefixes)
    (puthash "racket"           ";"  comment-prefixes)
    (puthash "scheme"           ";"  comment-prefixes)
    (puthash "nasm"             ";"  comment-prefixes)
    (puthash "python"           "#"  comment-prefixes)
    (puthash "c"                "//" comment-prefixes)
    (puthash "c++"              "//" comment-prefixes)
    (puthash "haskell"          "--" comment-prefixes)
    
    (gethash lang-mode comment-prefixes)))

(defun header-doc-create ()
  (interactive)
  (beginning-of-buffer)
  (let ((comment-prefix (header-doc-get-comment-style))
	(file-name (file-relative-name (buffer-file-name))))
    (insert (format "%s %s\n" comment-prefix file-name))
    (insert (format "%s <insert notes here>\n" comment-prefix))
    (insert (format "%s \n" comment-prefix))
    (insert (format "%s \n" comment-prefix))
    (insert (format "%s (C) %s\n\n" comment-prefix (format-time-string "%m/%Y")))))
