(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (sqrt-iter (improve guess x)
		 guess
		 x)))

(define (square x)
  (* x x))

(define (good-enough? guess old-guess)
  (< (abs (- guess old-guess)) 0.001))

;; Alternative strategy for implementing good-enough? is to watch
;; how guess changes from one iteration to the next and stop, when
;; change is a very small fraction of the guess.

(sqrt 9999999999998)
(sqrt 0.001)
