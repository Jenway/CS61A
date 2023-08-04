(define (split-at lst n)
    ; with tail recursion
    (define (helper lst1 lst2 n acc) (
        cond
            ((or (null? lst2) (= 0 n)) acc)
            (else
              (let ((new_lst1 (append lst1 (list (car lst2))))
                    (new_lst2 (cdr lst2)))
                (helper new_lst1 new_lst2 (- n 1) (cons new_lst1 new_lst2))
              )
            )
          )
        )
    (cond
      ((= n 0) (cons nil lst))
      ((> n (length lst)) (cons lst nil))
      (else (helper '() lst n '()))
    )
)

(define (split-at_old lst n)
    ;without tail recursion
    (define (helper lst1 lst2 n) (
        cond
            ((null? lst2) (cons lst1 lst2))
            ((= 0 n) (cons lst1 lst2))
            (else  (helper (append lst1 (list (car lst2))) (cdr lst2) (- n 1)))
          )
        )
        (helper '() lst n)
    )

; Tree Abstraction
; Constructs tree given label and list of branches
(define (tree label branches)
  (cons label branches))

; Returns the label of the tree
(define (label t) (car t))

; Returns the list of branches of the given tree
(define (branches t) (cdr t))

; Returns #t if t is a leaf, #f otherwise
(define (is-leaf t) (null? (branches t)))

(define (filter-odd t)
  (let ((leaf (if (even? (label t)) nil (label t))))
    (if (is-leaf t)
        (tree leaf nil)
        (tree leaf (map filter-odd (branches t)))
        )
    )
)

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr)
  (let ((oper (car expr))
        (left (cadr expr))
        (right (caddr expr))
        (rest (cdr (cddr expr)))
        )
    (if (> (eval right) (eval left))
      (append (list oper right left) rest)
      expr
      )
    )
  )
