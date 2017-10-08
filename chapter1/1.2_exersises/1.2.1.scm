;; Procedure and Process they genrate

;; A procedure is a pattern for the local evolution of compound process.
;; We would like to be able to make statements about the overall, or global
;; behaviour of process whose local evolution has been specified by a procedure.

;; some typical pattern of process evaluation
;; n! = n . (n-1) . (n-2) .... 3.2.1

;; there are many ways to compute factorials
;; one way is to make use of the observation that n! is equal to n times (n-1)!

;; (define (factorial n)
;;   (define (iter product counter)
;;     (if (> counter n)
;; 	product
;; 	(iter (* counter product)
;; 	      (+ counter 1))))
;;   (iter 1 1))

;; if iterative process is described by recursive procedure
;; this implementation is called tail-recursive
;; with a tail-recursive implementation iteration can be expressed
;; using the ordinary procedure call mechanism.

(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
		 (+ counter 1)
		 max-count)))

		    
