;;;; Ex 2.8.1

(define tree-copy
  (lambda (tr)
    (if (not (pair? tr))
        tr
        (cons (tree-copy (car tr))
              (tree-copy (cdr tr))))))

(define tree-copy-rev
  (lambda (tr)
    (if (not (pair? tr))
        tr
        (cons (tree-copy (cdr tr))
              (tree-copy (car tr))))))

;; reverses the cdr and car from the original tree-copy procedure


;;;; Ex 2.8.2

(define append-two
  (lambda (lst arg)
    (cond ((null? lst) arg)
          (else (cons (car lst) (append-two (cdr lst) arg))))))


;; ex 2.8.3

(define make-list
  (lambda (n x)
    (cond ((= n 0) '()) 
	  (else (cons x (make-list (- n 1) x))))))


;; ex 2.8.4

(define list-ref
  (lambda (lst n)
    (cond ((= n 0) (car lst))
	  (else (list-ref (cdr lst) (- n 1))))))

(define list-tail
  (lambda (lst n)
    (cond ((= n 0) lst)
	  (else (list-tail (cdr lst) (- n 1))))))


;; ex 2.8.5

(define shorter?
  (lambda (lst1 lst2)
    (and (not (null? lst2))
	 (or (null? lst1)
	     (shorter? (cdr lst1) (cdr lst2))))))

(define shorter
  (lambda (lst1 lst2)
    (cond ((shorter? lst2 lst1) lst2)
	  (else lst1))))


;; ex 2.8.6

(define even?
  (lambda (n)
    (cond ((= n 0) #t)
	  (else (odd? (- n 1))))))

(define odd?
  (lambda (n)
    (cond ((= n 0) #f)
	  (else (even? (- n 1))))))


;; ex 2.8.7

(define transpose
  (lambda (pair)
    (cons (map car pair) (map cdr pair))))



