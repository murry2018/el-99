;; P03 (*) Find the K'th element of a list.
;;     The first element in the list is number 1.
;;     Example:
;;     * (element-at '(a b c d e) 3)
;;     C

(defun element-at (s idx)
  (if (<= idx 1)
      (if (= idx 1) (car s)
	nil) ;; idx < 1
    (element-at (cdr s) (- idx 1))))

;; Test
(assert (eq (element-at '(a b c d e) 3) 'c))
(assert (eq (element-at '(a b c d e) 0) nil))
(assert (eq (element-at '(a b c d e) 9) nil))
