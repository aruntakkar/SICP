;; To apply a compound procedure to arguments,
;; evaluate the body of the procedure with each formal parameter replaced by corresponding arguments.
;; We must evaluate the operands to get the arguments.
;; subsitution model that determines the "meaning" of procedure application.


;; This is not the only way to evaluate procedure there are more models.
;; An alternative evaluation model would not evaluate the operands untill their values were needed.
;; instead it would first substitute operand expressions for parameters untill it obtained an expression
;; involving only primitive operators & then perform the evaluation.

;; if We use this method for evaluation of

;; (f 5)

;; (sum-of-square (+ 5 1) (* 5 2))

;; (+ (square (+ 5 1)) (square (* 5 2)) )

;; (+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2))) 

;; followed by the reductions

;; (+ (* 6 6) (* 10 10))

;; (+ 36 10

;; This evaluation model is known as "normal-order evaluation" or "fully expand & then reduce"

;; The method most interpreter actually uses applicative-order-evaluation,

;; lisp also uses applicative-order-evaluation,

