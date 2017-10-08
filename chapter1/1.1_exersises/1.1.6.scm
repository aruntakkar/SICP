;; expressive power of the class of procedures that we can define at this point
;; is very limited, because we have no way to make tests and perform different operations
;; depending on result of a test

;; We can't define a procedure that computes the absolute value of a number by testing
;; whether the number is possitive, negtive or zero

;; We can create this type of procedures with cond(which stands for conditionals)

(define (abs x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (-x))))


;; general format of case analysis with cond

;; (cond ((p1) (e1))
;;       ((p2) (e2))
;;       .
;;       .
;;       .
;;       ((pn) (en))

;; ((p) (e)) called clauses

;; p is predicate whose value is interpreted as either true or false.

;; e is consquent expression, returns if value of predicate is true.

;; The absolute value procedure abs makes use of the primitive predicates >, <, =

;; Another way to write absolute-value-procedure is:

;; Else is special symbol that can be used in place of the (p) in the final clause of cond.

(define (abs x)
  (cond ((< x 0) (-x))
	(else x)))



;; other way to write the absolute-value procedure

;; in fact, any expression that always evaluates to a true value could be used as the (p) here.

(define (abs x)
  (if (< x 0)
      (-x)
      x))

;; if, restricted type of conditional that can be used when there are precisely two cases.

;; (if (predicate) (consequent) (alternative))

;; Note that and and or are special forms, not procedure, because the subexpressions are not
;; necassarily all evaluated, Not is an ordinary procedure.

;; As an example of how these are used, the condition that a number x be in range 5 < x < 10 may be represented as:

(and (> x 5) (< x 10))

;; We can define a predicate to test whether one number is greater than or equal to another as

(define (>= x y)
  (or (> x y) (= x y)))

;; or alternatively as

(define (>= x y)
  (not (< x y)))

