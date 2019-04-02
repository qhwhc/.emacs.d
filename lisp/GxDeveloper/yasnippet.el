;; -*- coding: utf-8 -*-

(use-package yasnippet
  :config
  (yas-global-mode 1))


; yas-snippet-dirs
; dir list used to load the snippet files
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
        "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
        "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
        ))

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.
