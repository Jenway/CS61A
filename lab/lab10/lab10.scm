(define (over-or-under num1 num2)
  (cond
       ((< num1 num2) -1)
       ((= num1 num2) 0)
       ((> num1 num2) 1)
  )
)

(define (over-or-under num1 num2)
  (if(< num1 num2)
    -1
    (if(= num1 num2)
      0
      1)
  )
)

(define (make-adder num)
  (lambda (x) (+ x num))
)

(define (make-adder num)
  (define (adder x) (+ x num))
  adder
)

(define (composed f g)
  (
   lambda (x) (f (g x))
   )
)

(define (square n) (* n n))

(define (pow base exp)
  (cond
    ((= exp 0) 1 )
    ((even? exp) (square (pow base (quotient exp 2))))
    ((odd? exp) (* base (square (pow base (quotient exp 2)))))
  )

)
