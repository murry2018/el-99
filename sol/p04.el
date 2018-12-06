;; P04 (*) Find the number of elements of a list.

(defun my-length (coll)
  (defun my-length-iter (coll count)
    (if (null coll) count
      (my-length-iter (cdr coll) (+ count 1))))
  (my-length-iter coll 0))

;; Test
(assert (= (my-length '(1 2 3 4 5)) 5))
(assert (= (my-length '()) 0))


;; Another solution using reduce
(defun my-length2 (coll)
  (reduce (lambda (count elem)
            (+ count 1))
          coll
          :initial-value 0))

;; Test
(assert (= (my-length2 '(1 2 3 4 5)) 5))
(assert (= (my-length2 '()) 0))
