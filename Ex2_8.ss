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
