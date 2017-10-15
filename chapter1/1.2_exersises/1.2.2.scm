;; tree-recursive process

(define (fib-tree-recursive-process n)
  (cond ((= n 0) 0)
	((= n 1) 1)
	(else (+ (fib-tree-recursive-process (- n 1))
		 (fib-tree-recursive-process (- n 2))))))

(fib-tree-recursive-process 5)

;; iterative process
;; in iterative process idea is to take pair of two integers a and b.
;; intialized Fib(1) = 1, Fib(0) = 0
;; repeatedly apply the simultaneous transformations
;; a <- a + b
;; b <- a

;; it is not hard to see after transformation a, b will be respectively
;; Fib(n+1) and Fib(n)

(define (fab-iterative-process n)
  (fab-iter 1 0 n))

(define (fab-iter a b count)
  (if (= count 0)
      b
      (fab-iter (+ a b) a (- count 1)))


;; (define (fib-iterative-process n)
;;   (fab-iter 0 1 n))

;; (define (fab-iter a b count)
;;   (if (= count 0)
;;       a
;;       (fab-iter (+ a b) b (- count 1))))

;; (fib-iterative-process 5)

