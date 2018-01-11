(defun fn (n)
  (when (not (equal n 0))
    (write-line "Hello World")
    (fn (- n 1))))


(fn (read))
