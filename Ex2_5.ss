#| Chapter 2.5 exercises |#



;;;;
;;;; ex 2.5.1
;;;;

;; a

(let ((f (lambda (x) x)))
  (f 'a))
> a


;; b

(let ((f (lambda x x)))
  (f 'a))
> (a)

;; c

(let ((f (lambda (x . y)  x)))
  (f 'a))
> a

;; d

(let ((f (lambda (x . y)  y)))
  (f 'a))
> ()


;;;;
;;;; ex 2.5.2
;;;;


(define list
  (lambda x x))


;;;;
;;;; ex 2.5.3
;;;;


;; free vs bound vs capturing. refer SICP 1st chapter also

;; a
;; free -> none

;; b
;; free -> +

;; c
;; free -> f

;; d
;; free -> cons, f, y

;; e
;; free -> cons, y

;; f
;; free -> cons, y, z

