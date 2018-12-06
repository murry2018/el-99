;; P05 (*) Reverse a list.

(defun my-reverse (s)
  (defun iter (s res)
    (if s (iter (cdr s) (cons (car s) res))
      res))
  (iter s nil))

;; Test
(assert (equal (my-reverse '(1 2 3 4 5)) '(5 4 3 2 1)))
