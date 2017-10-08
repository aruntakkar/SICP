(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))


(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

;; using new-if to rewrite the square-root program

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

;; in new-if case predicate is sqrt-iter
;; consequent / then-clause is guess
;; alternative / else is (sqrt-iter (improve guess x)


;; but lisp(scheme) is applicative-order-evaluation, evaluates all its
;; expressions as once, as soon as function is called,
;; which include a call to sqrt-iter in function sqrt-iter & then new-if recursively.
;; & creates infinite loop


;; if is a special form which means that even lisp follows applicative order,
;; it only evaluates one of its parameters not both.
