#lang sicp

(#%require rackunit)

(define (square a) (* a a))
(define (sum a b c)
  (+ (square
      (if (> a
             b)
          a
          b))
     (square
      (if (> a
             c)
          a
          c))))

(check-equal? (sum 1 2 3) 13)
