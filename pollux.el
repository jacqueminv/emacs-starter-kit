(global-set-key (kbd "M-q") 'indent-region)

;;alt is alt, cmd is meta
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;;maximize & fullscreen functions
(load-file "~/.emacs.d/vendor/maxframe.el")
(defvar my-fullscreen t "Check if fullscreen is on or off")
(setq  mf-offset-x 55)
(defun maximize ()
      (interactive)
      (setq my-fullscreen (not my-fullscreen))
      (if my-fullscreen
	  (restore-frame)
	(maximize-frame)))
(global-set-key [f11] 'maximize)

(color-theme-twilight)

(server-start)

(global-hl-line-mode 1)

