;; hide password in shell-mode
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;; make typing overwrite text selection
(delete-selection-mode 1)
