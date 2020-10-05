;;
;; EMACS CONFIG
;;
;; Victoire RABEAU
;;


;; Packages:

(require 'package)
(setq package-enable-at-startup nil) ; #1
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)


;; Environment:

(set-language-environment "UTF-8")


;; Remove trailing spaces:

(add-hook 'c-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook 'c++-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))


;; Interface:

(load-theme 'monokai t)
(global-display-line-numbers-mode)
(menu-bar-mode -1)
(column-number-mode t)


;; Keyboard shortcuts:

(global-set-key (kbd "C-s") 'save-buffer)             
(global-set-key (kbd "C-t") 'treemacs)
(global-set-key (kbd "C-e") 'treemacs-add-and-display-current-project) 
(global-set-key (kbd "C-r") 'treemacs-remove-project-from-workspace) 
(global-set-key (kbd "C-C") 'copy-region-as-kill)      ;; copy       
(global-set-key (kbd "C-V") 'yank)                     ;; paste
(global-set-key (kbd "C-X") 'kill-region)              ;; cut           
(global-set-key (kbd "C-z") 'undo)                              
(global-set-key (kbd "C-q") 'save-buffers-kill-emacs)


;; Mouse:

(xterm-mouse-mode)

(defun cursor-down-one-line ()
  (interactive)
  (forward-line 1)
  )

(defun cursor-up-one-line ()
  (interactive)
  (forward-line -1))

(when (string-equal system-type "gnu/linux")
  (progn
    (global-set-key (kbd "<mouse-4>") 'cursor-up-one-line) ; wheel up
    (global-set-key (kbd "<mouse-5>") 'cursor-down-one-line) ; wheel down
    )
  )


;; Selection:

(delete-selection-mode 1)
