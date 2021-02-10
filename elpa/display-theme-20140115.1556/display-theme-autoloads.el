;;; display-theme-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "display-theme" "display-theme.el" (0 0 0 0))
;;; Generated autoloads from display-theme.el

(autoload 'display-theme-mode "display-theme" "\
Minor mode to display current theme(s) at mode-line.

\(fn &optional ARG)" t nil)

(defvar global-display-theme-mode nil "\
Non-nil if Global Display-Theme mode is enabled.
See the `global-display-theme-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-display-theme-mode'.")

(custom-autoload 'global-display-theme-mode "display-theme" nil)

(autoload 'global-display-theme-mode "display-theme" "\
Toggle Display-Theme mode in all buffers.
With prefix ARG, enable Global Display-Theme mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Display-Theme mode is enabled in all buffers where
`display-theme-mode' would do it.
See `display-theme-mode' for more information on Display-Theme mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "display-theme" '("display-theme")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; display-theme-autoloads.el ends here
