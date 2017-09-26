(define (square x) (* x x))

;; We can understand this in following way
;; To square something , multiply it by itself

;; General form of procedure definition is
;; (define ((name) (formal parameters)) (body))

(square 21)

(square (+ 2 5))

(square (square 3))

;; formal parameters are grouped within parentheses, just as they would be in an actual call to the procedure being defined.

;; We can also use square as building block in defining other procedures, in defining

;; (+ (square x) (square y))		

;; We can easily define a procedure sum of squares that, given any two numbers as arguments, produces the sm of their squares:
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)


;; using sum of square to create other procedures
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)
