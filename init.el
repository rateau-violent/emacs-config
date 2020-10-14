;;
;; EMACS CONFIG
;;
;; Victoire RABEAU
;;


;; Packages:

;(require 'fill-column-indicator)
(require 'package)
(setq package-enable-at-startup nil) ; #1
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)


;; Load files:

(load-file "~/.emacs.d/fill_column_indicator.el")

;; Environment:

(set-language-environment "UTF-8")


;; Disable backup files:
(setq make-backup-files nil)

;; Remove trailing spaces:

(add-hook 'c-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook 'c++-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))


;; Interface:

(load-theme 'monokai t)
(global-display-line-numbers-mode)
(menu-bar-mode -1)
(column-number-mode t)

(fci-mode 1)
(setq fci-rule-column 80)
(setq fci-rule-width 1)
(setq fci-rule-color "light gray")


;; Tabs:

(setq-default tab-width 4)

(defun my-insert-tab-char ()
  (interactive)
  (insert "\t"))


;; Selection:

(delete-selection-mode 1)

(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg)
          (when (and (eval-when-compile
                       '(and (>= emacs-major-version 24)
                             (>= emacs-minor-version 3)))
                     (< arg 0))
            (forward-line -1)))
        (forward-line -1))
      (move-to-column column t)))))

(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (move-text-internal arg))

(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))


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


;; Keyboard shortcuts:

(global-set-key (kbd "C-q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-s") 'save-buffer)             
(global-set-key (kbd "C-t") 'treemacs)
(global-set-key (kbd "C-e") 'treemacs-add-and-display-current-project) 
(global-set-key (kbd "C-r") 'treemacs-remove-project-from-workspace) 
(global-set-key (kbd "C-z") 'undo)                              
(global-set-key (kbd "C-v") 'yank)      
(global-set-key (kbd "C-x") 'kill-region)
(global-set-key (kbd "C-H") 'std-file-header)
(global-set-key (kbd "TAB") 'my-insert-tab-char)
(global-set-key (kbd "C-c") 'copy-region-as-kill)
(global-set-key [M-S-down] 'move-text-down)
(global-set-key [M-S-up] 'move-text-up)
