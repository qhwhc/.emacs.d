
;;关闭启动画面
(setq inhibit-splash-screen t)
;;窗体设置
(tool-bar-mode -1)
(scroll-bar-mode -1)
;;全屏

;;显示当前行
(global-hl-line-mode t)
;;设置光标
(setq-default cursor-type 'bar)
(provide 'init-ui)
