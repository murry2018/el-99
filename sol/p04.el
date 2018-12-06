;; P04 (*) Find the number of elements of a list.

(defun my-length (s)
  (defun my-length-iter (s count)
    (if (null s) count
      (my-length-iter (cdr s) (+ count 1))))
  (my-length-iter s 0))

;; Test
(assert (= (my-length '(1 2 3 4 5)) 5))
(assert (= (my-length '()) 0))


;; Another solution using reduce
(defun my-length2 (s)
  (reduce (lambda (count elem)
            (+ count 1))
          s
          :initial-value 0))

;; Test
(assert (= (my-length2 '(1 2 3 4 5)) 5))
(assert (= (my-length2 '()) 0))
