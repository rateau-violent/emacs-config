;; ====================================================================== ;;
;;                             EMACS CONFIG                               ;;
;;                            Victoire RABEAU                             ;;
;; ====================================================================== ;;



;; ===== PACKAGES ===== ;;

(require 'package)

(setq package-enable-at-startup nil)

(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(require 'auto-complete)

(require 'markdown-mode)

(require 'cmake-mode)

(require 'haskell-mode)

(package-initialize)

;; -------------------- ;;



;; ===== LOAD FILES =====

(load-file "~/.emacs.d/interface.el")

(load-file "~/.emacs.d/programming.el")

(load-file "~/.emacs.d/keyboard-shortcuts.el")

(load-file "~/.emacs.d/mouse.el")

;; ---------------------- ;;



;; =====  STARTUP SCREEN ===== ;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(haskell-mode markdown-mode auto-complete ##)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; --------------------------- ;;



;; ===== ENVIRONMENT ===== ;;

(set-language-environment "UTF-8")

;; ----------------------- ;;



;; ===== EMACS FILES ===== ;;

(setq create-lock-files nil) ; disable lock files

(setq make-backup-files nil) ; disable backup files

;; ----------------------- ;;
