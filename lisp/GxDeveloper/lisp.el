;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; Setup load-path, autoloads and your lisp system
(add-to-list 'load-path "~/.emacs.d/elpa/slime-20190319.930")
(require 'slime-autoloads)
;; Also setup the slime-fancy contrib
(add-to-list 'slime-contribs 'slime-fancy)

(add-hook 'slime-load-hook
  (lambda ()
     (define-key slime-prefix-map (kbd "M-h") 'slime-documentation-lookup)))
