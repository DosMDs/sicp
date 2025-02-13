#lang sicp

(#%require rackunit)

(define (square a) (* a a))
(define (sum-square-two-big-numbers a b c)
  (+ (square (if (> a b) a (if (> b c) b c))) (square (if (> c b) c (if (> a b) b a)))))

(check-equal? (sum-square-two-big-numbers 2 1 3) 13)
