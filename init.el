;;set language
(set-language-environment "UTF-8")

;;set org-mode to manage settings
(require 'org-install)
(require 'ob-tangle)

;; add other el file
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/otherEl")
(add-to-list 'load-path "~/.emacs.d/Basic")
;;init-packages
(org-babel-load-file (expand-file-name "lisp/Basic/init-packages.org" user-emacs-directory))
(require 'init-packages)

;;init-packages
(org-babel-load-file (expand-file-name "lisp/Basic/package-set.org" user-emacs-directory))
(require 'package-set)

;;function
(org-babel-load-file (expand-file-name "lisp/Basic/init-function.org" user-emacs-directory))
(require 'init-function)

;;Org
(org-babel-load-file (expand-file-name "lisp/Basic/init-org.org" user-emacs-directory))
(require 'init-org)

;;better-defaults
(org-babel-load-file (expand-file-name "lisp/Basic/init-better-defaults.org" user-emacs-directory))
(require 'init-better-defaults)

;;init-keybindings
(org-babel-load-file (expand-file-name "lisp/Basic/init-keybindings.org" user-emacs-directory))
(require 'init-keybindings)

;;init-abbrev-table
(org-babel-load-file (expand-file-name "lisp/Basic/init-abbrev-table.org" user-emacs-directory))
(require 'init-abbrev-table)

;;init-ui
(org-babel-load-file (expand-file-name "lisp/Basic/init-ui.org" user-emacs-directory))
(require 'init-ui)

;editor en
(loop for file in (directory-files "~/.emacs.d/lisp/GxDeveloper" t "\\.el$")
      do (load file nil nil t))
;;custom-file
(setq custom-file (expand-file-name "lisp/customFile/custom.el" user-emacs-directory))

(load-file custom-file)
