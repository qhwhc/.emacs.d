;;声音取消
(setq ring-bell-function 'ignore)
;;显示行号
(global-linum-mode t)
(global-auto-revert-mode t)
;;自定义补齐功能
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("syso" "System.out.println()")
					    ))
;;删除选中位置
(delete-selection-mode t)
;;去掉备份文件
(setq make-backup-files nil)
;;禁止自动保存
(setq auto-save-default nil)
;;设置最近打开文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;;括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;代码缩进
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

;;补全功能
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

;;别名
(fset 'yes-or-no-p 'y-or-n-p)
;;递归拷贝和删除
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;;目录不缓存
(put 'dired-find-alternate-file 'disabled nil)
;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
;;打开当前目录
(require 'dired-x)
;;双窗口复制
(setq dired-dwin-target 1)

(provide 'init-better-defaults)
