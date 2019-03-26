;;set language
(set-language-environment "UTF-8")

;;set org-mode to manage settings
(require 'org-install)
(require 'ob-tangle)

;; add other el file
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/otherEl")
(add-to-list 'load-path "~/.emacs.d/lisp/LEN")
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

;;init-abbrev-table
(org-babel-load-file (expand-file-name "lisp/init-abbrev-table.org" user-emacs-directory))
(require 'init-abbrev-table)

;;init-ui
(org-babel-load-file (expand-file-name "lisp/init-ui.org" user-emacs-directory))
(require 'init-ui)

;;python en
;;(org-babel-load-file (expand-file-name "lisp/init-python.org" user-emacs-directory))
;;(require 'init-python)

;;Js en
(org-babel-load-file (expand-file-name "lisp/LEN/init-js.org" user-emacs-directory))
(require 'init-js)

;;Html en
(org-babel-load-file (expand-file-name "lisp/LEN/init-html.org" user-emacs-directory))
(require 'init-html)

;;custom-file
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)
