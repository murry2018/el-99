;; P02 (*) Find the last but one box of a list.
;;     Example:
;;     * (my-but-last '(a b c d))
;;     (C D)

(defun my-but-last (s)
  (if (null (cddr s)) s
    (my-but-last (cdr s))))

;; Test
(assert (equal (my-but-last '(a b c d)) '(c d)))
(assert (equal (my-but-last '(a b)) '(a b)))
(assert (equal (my-but-last '()) nil))
