;; MAKE *scratch* buffer blank after start up
(setq initial-scratch-message nil)

(set-default-coding-systems 'utf-8 )
(set-terminal-coding-system 'utf-8 )
(set-buffer-file-coding-system 'utf-8 )
(prefer-coding-system 'utf-8 )

;; show return code
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; display time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-string-forms
        '(year "/" month "/" day "(" dayname ") " 24-hours ":" minutes))
  (display-time)
(setq display-time-interval 10)

;; always show line number
(global-linum-mode 1)

;; require color-theme package
(require 'color-theme)
(require 'color-theme-railscasts)
(color-theme-railscasts)
