#| Chapter 2.3 exercises |#


;;;;
;;;; ex 2.3.1
;;;;

;; The evaluation starts with the innermost list which is (list + - * /) this returns (+ - * /). Then cdr of this is
;; another list (- * /). Then car of this is - procedure. The subtraction procedure is applied to the arguments 17
;; 5 yielding 12.

> ((car (cdr (list + - * /))) 17 5)
12
