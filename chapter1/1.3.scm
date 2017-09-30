(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (first x y z)
  (cond ((and (>= x y) (>= x z)) x)
	((and (>= y x) (>= y z)) y)
	(else z)))

(define (second x y z)
  (cond ((or (and (<= x y) (>= x z))
	     (and (>= x y) (<= x z))) x)
	((or (and (<= y x) (>= y z))
	     (and (>= y x) (<= y z))) y)
	(else z)))


(define (sum-two-largest-squares x y z)
  (sum-of-squares (first x y z) (second x y z)))


(sum-two-largest-squares 8 9 10)
