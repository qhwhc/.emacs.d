(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-c p s") 'helm-do-ag)

;; open recentf file
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "<f2>") 'open-my-init-file)

(global-set-key "\C-s" 'swiper)

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

;;代码缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
;;Hippie 补全
(global-set-key (kbd "M-/") 'hippie-expand)

;;git查找文件快捷键
(global-set-key (kbd "C-c p f") 'counsel-git)

(provide 'init-keybindings)
