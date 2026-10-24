#| Chapter 2.2 exercises |#




;;;;
;;;; ex 2.2.1
;;;;

;; a
(+ (* (* 1 2) (- 2 (/ 1 3))) (* -8 7))

;; if the dot doesnt mean multiplication but rather decimal then the answer will be

(+ (* 1.2 (- 2 (/ 1 3))) -8.7)

;; if it is a decimal

(+ (* 1.2 (- 2 (/ 1 3))) -8.7)

;; b
(/ (+ 2/3 4/9) (- 5/11 4/3))

;; c
(/ (+ 1 1) (/ (+ 2 1) (+ 1 1/2)))

;; d
(* 1 -2 3 -4 5 -6 7)




;;;;
;;;; ex 2.2.2
;;;;

;; The section in 6.4 is a great reference on numbers and the type of procedures which can be applied. The formal
;; language is something which I will need to understand.




;;;;
;;;; ex 2.2.3
;;;;

> (cons 'car 'cdr)
(car . cdr)

> (list 'this '(is silly))
(this (is silly))

> (cons 'is '(this silly?))
(is this silly?)

> (quote (+ 2 3))
(+ 2 3)

> (cons '+ '(2 3))
(+ 2 3)

> (car '(+ 2 3))
+

> (cdr '(+ 2 3))
(2 3)

> cons
#<procedure cons>

> (quote cons)
cons

> (quote (quote cons))
'cons

> (car (quote (quote cons)))
quote

> (+ 2 3)
5

> (+ '2 '3)
5

> (+ (car '(2 3)) (car (cdr '(2 3))))
5

> ((car (list + - * /)) 2 3)
5

;;;;
;;;; ex 2.2.4
;;;;

;; yield b
(car (cdr (car '((a b) (c d)))))

;; yield c
(car (car (cdr '((a b) (c d)))))

;; yield d
(car (cdr (car (cdr '((a b) (c d))))))



;;;;
;;;; ex 2.2.5
;;;;

;; using sdraw tool by Professor Touretzky for Common Lisp to verify the structure of the cons cells

CL-USER> (sdraw '((a . b) ((c) d) ()))

[*|*]------->[*|*]------------------------>[*|*]--->NIL
 |            |                             |
 v            v                             v
[*|*]--->B   [*|*]--------->[*|*]--->NIL   NIL
 |            |              |
 v            v              v
 A           [*|*]--->NIL    D
              |
              v
              C



;;;;
;;;; ex 2.2.6
;;;;
	      
> (cons 1 (cons '(2 . ((3) . ())) (cons '(()) (cons 4 5))))
(1 (2 (3)) (()) 4 . 5)


CL-USER> (sdraw '(1 (2 (3)) (()) 4 . 5))

[*|*]--->[*|*]------------------>[*|*]--------->[*|*]--->5
 |        |                       |              |
 v        v                       v              v
 1       [*|*]--->[*|*]--->NIL   [*|*]--->NIL    4
          |        |              |
          v        v              v
          2       [*|*]--->NIL   NIL
                   |
                   v
                   3




;;;;
;;;; ex 2.2.7
;;;;

;; This is a tedious exercise and we can aim to extract a, b, c, d, (a), (b), (c), (d), (a b), (c d), () etc. Perhaps
;; we will not be able to get a list like ((a b) c) with only car and cdr and we will need cons. Thus avoiding this.
;; Let me see how far I get

> (car '((a b) (c d)))
(a b)

> (car (cdr '((a b) (c d))))
(c d)

> (cdr '((a b) (c d)))
((c d))

> (car (car '((a b) (c d))))
a

> (car (cdr (car '((a b) (c d)))))
b

> (car (car (cdr '((a b ) (c d)))))
c

> (car (cdr (car (cdr '((a b ) (c d))))))
d

> (cdr (car '((a b) (c d))))
(b)

> (cdr (car (cdr '((a b ) (c d)))))
(d)

> (cdr (cdr '((a b) (c d))))
()

> (cdr (cdr (car '((a b) (c d)))))
()

> (cdr (cdr (car (cdr '((a b ) (c d))))))
()

;; Not able to get rest of the elements of the list as planned earlier.




;;;;
;;;; ex 2.2.8
;;;;

;; Read through section 2.3. The innermost list generates (+ - * /). These are the procedures. Then taking of car
;; of this gives the addition procedure which gets applied to 2 and 3 resulting in 5		   
		   
		   
