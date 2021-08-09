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

(package-initialize)

(setq package-selected-packages '(auto-complete markdown-mode cmake-mode haskell-mode company company-c-headers))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)

  (mapc #'package-install package-selected-packages))

;; -------------------- ;;



;; ===== LOAD FILES =====

(load-file "~/.emacs.d/interface.el")

(load-file "~/.emacs.d/programming.el")

(load-file "~/.emacs.d/keyboard-shortcuts.el")

(load-file "~/.emacs.d/mouse.el")

(load-file "~/.emacs.d/epitech-header.el")

;; ---------------------- ;;



;; =====  STARTUP SCREEN ===== ;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(markdown-mode auto-complete ##)))
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

(setq-default create-lock-files nil) ; disable lock files

(setq-default make-backup-files nil) ; disable backup files

;; ----------------------- ;;
