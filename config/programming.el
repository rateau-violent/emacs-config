;; ====================================================================== ;;
;;                             PROGRAMMING                                ;;
;; ====================================================================== ;;



;; ===== PAIRS ===== ;;

(electric-pair-mode 1)

(setq electric-pair-pairs
      '(
        (?\" . ?\")
        (?\{ . ?\})
        (?\' . ?\')
       )
)

;; ----------------- ;;



;; ===== TRAILING SPACES ===== ;;

(add-hook 'prog-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))

;; --------------------------- ;;



;; ===== TABS ===== ;;

(electric-indent-mode -1)

(setq-default intent-tabs-mode nil)

(setq-default tab-width 4)

;; ---------------- ;;



;; ===== AUTO COMPLETE ===== ;;

(global-auto-complete-mode t)

;; ------------------------- ;;



;; ===== SELECTION ===== ;;

(delete-selection-mode 1)

;; --------------------- ;;



;; ===== MAX LINE LENGTH ===== ;;

(add-hook 'c-mode-hook '(whitespace-line-column 80))

(add-hook 'haskell-mode-hook '(whitespace-line-column 79))

(add-hook 'c++-mode-hook '(whitespace-line-column 120))

(setq whitespace-style '(face lines-tail))

;; --------------------------- ;;
