;;========================================================================;;
;;                             INTERFACE                                  ;;
;;========================================================================;;



;; ===== THEME ===== ;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'monokai t)

;;-----------------;;



;; ===== COLUMNS AND LINES ===== ;;

(global-display-line-numbers-mode)

(column-number-mode t)

;; ----------------------------- ;;



;; ===== MENU BAR ===== ;;

(menu-bar-mode -1)

;; -------------------- ;;
