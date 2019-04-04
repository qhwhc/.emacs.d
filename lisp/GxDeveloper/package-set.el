;;swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
;;vim
(evil-mode 1)
;;theme
(load-theme 'monokai 1)
;;设置自动补齐
(global-company-mode t)
;;智能括号
(smartparens-global-mode 1)
;;显示单个引号
(sp-local-pair 'emacs-lisp-mode "`" nil :actions nil)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
;;hungry-delete
(global-hungry-delete-mode)
(provide 'package-set)
