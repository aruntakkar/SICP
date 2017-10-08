;; for example we have to construct a large library of procedures,
;; many numerical functions are computed as successive approximations
;; have named good-enough? and improve as auxiliary procedures.

;; solution for this problem is localize the subprocess, so sqrt could
;; coexist with other successive approximations
;; each having its own private good-enough? procedure

;; To make this, we allow a procedure to have internal defination

;; Such nesting of definitions, called block structure
;; is basically the right solution to the name-packaging problem

;; lexical scoping:-

;; dictates that free variables in a procedure are taken to refer to
;; bindings made by enclosing procedures definitions
;; that is, they are looked up in the environment in which the procedure
;; was defined

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x) 0.001)))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
	guess
	(sqrt-iter (improve guess))))
  (sqrt-iter 1.0)
  
