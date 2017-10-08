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


(define (sum-of-two-largest-squares x y z)
  (if (> x y)
      (if (> y z)
	  (sum-of-squares x y)
	  (sum-of-squares x z))
      (if (> x z)
	  (sum-of-squares x y)
	  (sum-of-squares y z))))

(sum-of-two-largest-squares 8 9 10)


(define (largest-sum-of-squares x y z)
  (cond ((and (<= x y) (<= x z))
	 (sum-of-squares y z))
	((and (<= y x) (<= y z))
	 (sum-of-squares x z))
  (else
   (sum-of-squares x y))))


(largest-sum-of-squares 8 9 10)


(define (sum-square-two-large x y z)
  (- (+ (square x)
	(square y)
	(square z)
	)
     (square (min x y z))))

(sum-square-two-large 8 9 10)
