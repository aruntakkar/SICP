;; let's evaluate the combination

;; start by retrieving the body of a-plus-abs-b

;; then it will replace the formal parameters with actual arguments

;; now we have one operator(a-plus-abs-b) and two operands(a, b)

;; evaluating this combination give us if statement returns either a+, a-,

;; which is then applied to another operand a + |b| or a - |b|

;; A plus/minus absolute value of b

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


(a-plus-abs-b 5 4)
