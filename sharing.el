;; add custom load path
(let* ((sharing-lisp-dir "~/.emacs.d/sharing-pkgs/")
       (default-directory sharing-lisp-dir)
       (orig-load-path load-path))
  (setq load-path (cons sharing-lisp-dir nil))
  (normal-top-level-add-subdirs-to-load-path)
  (nconc load-path orig-load-path))

(add-to-list 'load-path "~/.emacs.d/sharing-inits")
(let* ((default-directory "~/.emacs.d/sharing-inits/"))
  (load "display.el")
  (load "keybindings.el")
  (load "utils.el"))
