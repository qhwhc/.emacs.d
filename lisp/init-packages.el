;;读取本地配置包,必须
 (when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个  ELPA 镜像
;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
	       ;; --- Auto-completion ---
	       evil
	       company
	       swiper
	       helm-ag
	       smartparens
	       ;; --- Major Mode ---
	       js2-mode
	       nodejs-repl
	       exec-path-from-shell
	       ;; --- Themes ---
	       monokai-theme
	       ;; solarized-theme
	       popwin
	       ) "Default packages")
(setq package-selected-packages my/packages)
(defun my/packages-installed-p () 
    (loop for pkg in my/packages
	  when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))
(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))
;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))



;;swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;;popwin配置
(require 'popwin)
(popwin-mode t)

(evil-mode 1)

;;smartparens
(smartparens-global-mode t)
;;设置自动补齐
(global-company-mode t)

;;设置js文件打开配置
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(require 'window-numbering)
(window-numbering-mode 1)

;;加载主题
(load-theme 'monokai t)

(provide 'init-packages)
