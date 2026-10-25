#| Chapter 2.6 exercises |#



;;;;
;;;; ex 2.6.1
;;;;


(define doubler
  (lambda (f)
    (lambda (x) (f x x))))

(define double-any
  (lambda (f x)
    ((doubler f) x)))

(double-any double-any double-any)

;; this will go into an infinite loop



;;;;
;;;; ex 2.6.2
;;;;

(define compose
  (lambda (p1 p2)
    (lambda (x)
      (p1 (p2 x)))))

(define cadr
  (compose car cdr))

(define cddr
  (compose cdr cdr))

;;;;
;;;; ex 2.6.3
;;;;

(define caar
  (compose car car))
(define cadr
  (compose car cdr))

(define cdar
  (compose cdr car))
(define cddr
  (compose cdr cdr))

(define caaar
  (compose car caar))
(define caadr
  (compose car cadr))
(define cadar
  (compose car cdar))
(define caddr
  (compose car cddr))

(define cdaar
  (compose cdr caar))
(define cdadr
  (compose cdr cadr))
(define cddar
  (compose cdr cdar))
(define cdddr
  (compose cdr cddr))

(define caaaar
  (compose caar caar))
(define caaadr
  (compose caar cadr))
(define caadar
  (compose caar cdar))
(define caaddr
  (compose caar cddr))
(define cadaar
  (compose cadr caar))
(define cadadr
  (compose cadr cadr))
(define caddar
  (compose cadr cdar))
(define cadddr
  (compose cadr cddr))

(define cdaaar
  (compose cdar caar))
(define cdaadr
  (compose cdar cadr))
(define cdadar
  (compose cdar cdar))
(define cdaddr
  (compose cdar cddr))
(define cddaar
  (compose cddr caar))
(define cddadr
  (compose cddr cadr))
(define cdddar
  (compose cddr cdar))
(define cddddr
  (compose cddr cddr))
