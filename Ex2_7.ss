#| Chapter 2.7 exercises |#



;;;;
;;;; ex 2.7.1
;;;;

(define atom
  (lambda (x)
    (not (pair? x))))


;;;;
;;;; ex 2.7.2
;;;;


(define shorter
  (lambda (lst1 lst2)
    (cond
     ((> (length lst1) (length lst2)) lst2)
     ((< (length lst1) (length lst2)) lst1)
     (else lst1))))
