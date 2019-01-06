;;set language
(set-language-environment "UTF-8")

;;set org-mode to manage settings
(require 'org-install)
(require 'ob-tangle)

;; add other el file
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/otherEl")
;;Function
(org-babel-load-file (expand-file-name "lisp/init-function.org" user-emacs-directory))

;;init-packages
(org-babel-load-file (expand-file-name "lisp/init-packages.org" user-emacs-directory))
(require 'init-packages)

;;Org
(org-babel-load-file (expand-file-name "lisp/init-org.org" user-emacs-directory))
(require 'init-org)

;;better-defaults
(org-babel-load-file (expand-file-name "lisp/init-better-defaults.org" user-emacs-directory))
(require 'init-better-defaults)

;;init-keybindings
(org-babel-load-file (expand-file-name "lisp/init-keybindings.org" user-emacs-directory))
(require 'init-keybindings)

;;init-ui
(org-babel-load-file (expand-file-name "lisp/init-ui.org" user-emacs-directory))
(require 'init-ui)

;;custom-file
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)
