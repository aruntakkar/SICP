(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))

(trace A)

(A 1 10)

(A 2 4)

(A 3 3)

;; The procedure f, g, h will respectively compute (mathematical formulae given)
;; (f n): 2n
;; (g n): 2^{n}
;; (h n): 2^2^...(n-1 times)
