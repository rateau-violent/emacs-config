;; ====================================================================== ;;
;;                                    MOUSE                               ;;
;; ====================================================================== ;;



;; ===== CURSOR ===== ;;

(defun cursor-down-one-line ()
  (interactive)
  (forward-line 1)
)

(defun cursor-up-one-line ()
  (interactive)
  (forward-line -1)
)

(when (string-equal system-type "gnu/linux")
  (progn
    (global-set-key (kbd "<mouse-4>") 'cursor-up-one-line)   ; wheel up
    (global-set-key (kbd "<mouse-5>") 'cursor-down-one-line) ; wheel down
    )
)

;; ------------------ ;;
