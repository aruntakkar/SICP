;; Using applicative-order-evaluation, the evaluation of
;; applicative-order-evaluation is used by lisp
;; (test 0 (p)) never terminates, because (p) is infinitely expanded to itself
;; (test 0 (p))
;; (test 0 (p))
;; ... so on

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; normal-order-evaluation is also known as fully expand then reduce
;; Using normal-order-evaluation, the expression evaluates, step by step, to 0:
;; (test 0 (p))
;; (if (= 0 0) 0 (p))
;; (if #t 0 (p))
;; 0
