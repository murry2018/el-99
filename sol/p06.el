;; P06 (*) Find out whether a list is a palindrome.
;;      A palindrome can be read forward or backward; e.g. (x a m a x).

(defun palindrome? (s)
  (equal s (reverse s)))

;; Test
(assert (palindrome? '(a b c b a)))
(assert (null (palindrome? '(a b c d e))))

