(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("el" "emacs-lisp")
					    ))

(setq make-backup-files nil)

(setq auto-save-default nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)

(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer()
(interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

(global-linum-mode t)
(global-auto-revert-mode t)

(setq ring-bell-function 'ignore)

(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-better-defaults)
