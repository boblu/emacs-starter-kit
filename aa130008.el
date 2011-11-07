;; This is the configuration file for windows machine at work

;; load sharing part first
(load "sharing.el")

;; show menu bar
(menu-bar-mode 1)

;; Set font
(cond
 (window-system
  (make-face 'fixed_width_face)
  (set-face-attribute 'fixed_width_face nil
                      :family "Osaka－等幅"
                      :height 110)
  (add-hook 'text-mode-hook
            '(lambda()
               (buffer-face-set 'fixed_width_face)))
  (add-hook 'nxml-mode-hook
            '(lambda()
               (buffer-face-set 'fixed_width_face)))  
  
  (make-face 'programming_face)
  (set-face-attribute 'programming_face nil
                      :family "consolas"
                      :height 105)
  (add-hook 'java-mode-hook
            '(lambda()
               (buffer-face-set 'programming_face)))
  (add-hook 'ruby-mode-hook
            '(lambda()
               (buffer-face-set 'programming_face)))
  (add-hook 'emacs-lisp-mode-hook
            '(lambda()
               (buffer-face-set 'programming_face)))
  )
 )
