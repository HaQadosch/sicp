486
(+ 139 428)
(- 1000 334)
(* 5 99)
(/ 10 5)
(+ 2.7 10)
(+ 21 35 12 7)
(* 25 4 12)
(+ (* 3 5) (- 10 6))
(+
 (* 3
    (+
     (* 2 4)
     (+ 3 5)))
 (+
  (- 10 7) 6 ))

(defvar size 2)
size
(* 5 size)
'(rose violet daisy buttercup)
'(this list has (a list inside of it))
'(this list includes "text between quotation marks.")
'(this list
       looks like this)
(this is an unquoted list)
fill-column
(fill-column)
(concat "abc" "def")
(substring "The quick brown fox jumped" 16 19)

(defvar pi 3.14159)
(defvar radius 10)
(* pi (* radius radius))
(defvar circumference (* 2 pi radius))
circumference

(message "Hello World!")

(set 'flowers '(rose violet daisy buttercup))

(setq
 trees '(pine fir oak maple)
 herbivores '(gazelle antilope zebra))

(setq counter 0) 			; Let's call the initialiser.
(setq counter (+ counter 1))		; This is the incrementer.
counter

(define (square x)
  (* x x))

(square 21)
(square (+ 2 5))
(square (square 3))

(+ (square 2) (square 3))


(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

(define (abs-else x)
  (cond ((< x 0) (- x))
        (else x)))

(abs-else -10)

(define (abs-if x)
  (if (< x 0) (- x) x))

(abs-if -12)

10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
         b
         a)
(cond
  ((= a 4) 6)
  ((= b 4) (+ 6 7 a))
  (else -1))
(+ 2 (if (> a b) b a))
(* (cond
     ((> a b) a)
     ((< a b) b)
     (else -1))
   (+ a 1))

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))


(define (square x)
  (* x x))
(define (sum-square x y)
  (+ (square x) (square y)))
(define (first l)
  (car l))
(define (second l)
  (car (cdr l)))
(define (sum-square-largests a b c)
  (sum-square
   (first (sort (list a b c) >))
   (second (sort (list a b c) >))))


;; Square-root following Newton algo.
(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


;; exercise 1.6
(define (new-if predicate then-clause else-clause)
  (cond [predicate then-clause]
        [else else-clause]))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

;; exercice 1.7
(define (good-enough? old-guess new-guess)
  (< (abs (- old-guess new-guess)) 0.0001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x) x)))

;; exercice 1.8

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (good-enough? old-guess new-guess)
  (< (abs (- old-guess new-guess)) 0.0001))

(define (improve guess x)
  (/
   (+ (/ x (square guess)) (* 2 guess))
   3))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))


(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))





