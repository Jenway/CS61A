(define (cadr lst) (car (cdr lst)))
(define (caar lst) (car (car lst)))
(define (cadar lst) (car (cdr (car lst))))
(define (reverse lst)
  (if (null? lst)
      '() ; 如果列表为空，则返回空列表
      (append (reverse (cdr lst)) (list (car lst)))))

(define (make-kwlist1 keys values) (
    list keys values
))

(define (get-keys-kwlist1 kwlist) (
    car kwlist
))

(define (get-values-kwlist1 kwlist) (
    cadr kwlist
))

(define (make-kwlist2 keys values) (
    if (null? keys)
        ()
        (cons
            (list (car keys) (car values) )
            (make-kwlist2 (cdr keys) (cdr values))
        )))

(define (get-keys-kwlist2 kwlist) (
    if (null? kwlist)
        ()
        (cons
            (caar kwlist)
            (get-keys-kwlist2 (cdr kwlist) )
        )
))

(define (get-values-kwlist2 kwlist) (
    if (null? kwlist)
        ()
        (cons
            (cadar kwlist)
            (get-values-kwlist2 (cdr kwlist) )
        )
))

(define (add-to-kwlist kwlist key value) (
    make-kwlist
        (append (get-keys-kwlist kwlist) (list key))
        (append (get-values-kwlist kwlist) (list value))
  ))

(define (get-first-from-kwlist kwlist key) (
    let (
        (keys (get-keys-kwlist kwlist))
        (values (get-values-kwlist kwlist))
    )
    (define (find keys values key) (
        cond
            ((null? keys) nil)
            ((equal? key (car keys)) (car values))
            (else (find (cdr keys) (cdr values) key))
    ))
    (find keys values key)
))

(define (prune-expr_old expr)
    (define (prune-helper lst keep)
        (cond
            ((null? lst) nil)
            ((null? (cdr lst)) (if (= 0 keep) (cons (car lst) nil) nil))
            ((= 0 keep) (cons (car lst) (prune-helper (cdr lst) 1)))
            (else (prune-helper (cdr lst) 0))
    )
  )
  (cons (car expr) (prune-helper (cdr expr) 0))
)

(define (prune-expr expr)
  (define (prune-helper lst acc keep)
    (cond
      ((null? lst) (reverse acc))
      ((= 0 keep) (prune-helper (cdr lst) (cons (car lst) acc) 1))
      (else (prune-helper (cdr lst) acc 0))
    )
  )
  (cons (car expr) (prune-helper (cdr expr) '() 0))
)

(define (curry-cook formals body) (
    if (= (length formals) 0)
        body
        (list 'lambda (list (car formals)) (curry-cook (cdr formals) body))
    ))

(define (curry-consume curries args) (
    if (= (length args) 0)
        curries
        (curry-consume (curries (car args)) (cdr args))
    )
  )
