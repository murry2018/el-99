;; P01 (*) Find the last box of a list.
;;      Example:
;;      * (my-last '(a b c d))
;;      (D)

(defun my-last (s)
  (if (null (cdr s)) s
    (my-last (cdr s))))

;; Test
(assert (equal (my-last '(a b c d)) '(d)))
(assert (equal (my-last '(a)) '(a)))
(assert (equal (my-last '()) nil))
