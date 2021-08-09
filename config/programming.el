;; ====================================================================== ;;
;;                             PROGRAMMING                                ;;
;; ====================================================================== ;;



;; ===== PAIRS ===== ;;

(electric-pair-mode 1)

(setq-default electric-pair-pairs
      '(
        (?\" . ?\")
        (?\{ . ?\})
        (?\' . ?\')
       )
)

;; ----------------- ;;



;; ===== TRAILING SPACES ===== ;;

(add-hook 'prog-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook 'prog-mode-hook 'global-company-mode)

;; --------------------------- ;;



;; ===== TABS ===== ;;

(setq-default tab-width 4)

(setq-default indent-tabs-mode nil)

(setq-default tab-always-indent nil)

;; ---------------- ;;



;; ===== AUTO COMPLETE ===== ;;

(global-company-mode t)

(setq-default company-backend (delete 'company-semantic company-backends))

(add-to-list 'company-backends 'company-c-headers)

(add-to-list 'company-backends 'company-clang)

;; ------------------------- ;;



;; ===== SELECTION ===== ;;

(delete-selection-mode 1)

;; --------------------- ;;


;; ===== c ===== ;;

(setq-default c-default-style "linux"
              c-basic-offset 4)

;; ------------- ;;
