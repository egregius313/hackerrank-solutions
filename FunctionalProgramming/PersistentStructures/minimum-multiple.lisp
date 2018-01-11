(defun lcm (numbers)
  (/ (reduce #'* numbers)
     (reduce #'gcd numbers)))


(defun handle-command (v op i j)
  (case op
        ('Q
         (let ((ns (make-array 
                    :displaced-to v
                    :displ

                    )))
           (write-line )
           ))
        ('U
         (setf (aref v i) (* j (aref v j))))))


(defun minimum-multiple ()
  (let ((n (read))
        (v (make-array n :initial-element 0)))
    (loop for i from 1 to n
          do (setf (aref v (- i 1)) (read)))
    (let ((k (read)))
      (dotimes (ct k nil)
        (handle-command v (read) (read) (read))))))
