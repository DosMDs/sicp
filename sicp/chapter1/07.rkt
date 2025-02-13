#lang sicp

(define (average x y)
  (/ (+ x y) 2)) ; вычисляет среднее арифметическое двух чисел

(define (sqrt x)
  (define tolerance 0.001)
  (define (good-enough? guess new-guess)
    (< (abs (- new-guess guess)) (* tolerance new-guess)))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess (improve guess))
        (improve guess)
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
  