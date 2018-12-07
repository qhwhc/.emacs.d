;;org-mode
;; 设置默认 Org Agenda 文件目录
(setq org-agenda-files '("~/org"))
;;设置注释语法高亮
(require 'org)
(setq org-src-fontify-natively t)

(provide 'init-org)
