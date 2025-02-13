#lang sicp

(define tolerance 0.001) ; порог относительного изменения для завершения итераций

(define (average x y)
  (/ (+ x y) 2)) ; вычисляет среднее арифметическое двух чисел

(define (good-enough? guess new-guess)
  (< (abs (- new-guess guess)) (* tolerance new-guess)))
; проверяет, достаточно ли мало изменилось приближение (относительная разница меньше tolerance)

(define (improve guess x)
  (average guess (/ x guess)))
; улучшает текущее приближение, беря среднее между guess и x/guess

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)      ; если улучшение незначительно, считаем, что достигли нужной точности
      (sqrt-iter (improve guess x) x)))
; рекурсивно вычисляет новое приближение для квадратного корня

(define (sqrt x)
  (sqrt-iter 1.0 x))
; вычисляет квадратный корень из x, начиная с начального приближения 1.0