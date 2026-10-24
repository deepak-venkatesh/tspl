#| Chapter 2.4 exercises |#




;;;;
;;;; ex 2.4.1
;;;;

;; a

(+ (- (* 3 a) b)
   (+ (* 3 a) b))

(let ((x (* 3 a)))
  (+ (- x b) (+ x b)))

;; b

(cons (car (list a b c))
      (cdr (list a b c)))

(let ((x (list a b c)))
  (cons (car x) (cdr x)))


;;;;
;;;; ex 2.4.2
;;;;

(let ((x 9))
  (* x
     (let ((x (/ x 3)))
       (+ x x))))

> 54


;;;;
;;;; ex 2.4.3
;;;;

;; a

(let ((x 'a) (y 'b))
  (list (let ((x 'c)) (cons x y))
	(let ((y 'd)) (cons x y))))

(let ((x 'a) (y 'b))
  (list (let ((m 'c)) (cons m y))
	(let ((n 'd)) (cons x n))))


;; b

(let ((x '((a b) c)))
  (cons (let ((x (cdr x)))
	  (car x))
	(let ((x (car x)))
	  (cons (let ((x (cdr x)))
		  (car x))
		(cons (let ((x (car x)))
			x)
		      (cdr x))))))


(let ((x '((a b) c)))
  (cons (let ((m (cdr x)))
	  (car m))
	(let ((n (car x)))
	  (cons (let ((p (cdr n)))
		  (car p))
		(cons (let ((q (car n)))
			q)
		      (cdr n))))))
