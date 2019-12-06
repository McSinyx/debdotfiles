;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
(package-initialize)
(pdf-tools-install)

(require 'slime)
(setq inferior-lisp-program "sbcl --noinform"
      slime-contribs '(slime-fancy))
(require 'geiser)
(setq-default geiser-active-implementations '(guile racket))
(setq-default geiser-repl-use-other-window nil)
(setq-default geiser-repl-query-on-kill-p nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu nil)
 '(ac-auto-start nil)
 '(ac-expand-on-auto-complete nil)
 '(ac-trigger-key "M-RET")
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682"
    "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango)))
 '(erc-nick "cnx")
 '(package-selected-packages
   (quote
    (sane-term glsl-mode perl6-mode fireplace lua-mode markdown-mode
     smart-tabs-mode auctex wordnut magit geiser slime pdf-tools)))
 '(safe-local-variable-values (quote ((Syntax . Common-Lisp))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-follow-symlinks t)
 '(whitespace-style
   (quote
    (face trailing spaces newline space-mark newline-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Latin Modern Mono" :foundry "UKWN"
                :slant normal :weight normal :height 120 :width normal))))
 '(whitespace-space ((t (:foreground "gray")))))

(savehist-mode 1)
(setq-default inhibit-splash-screen t)
(find-file-noselect "/usr/share/dict/words")
(setq-default fill-column 79)
(add-hook 'prog-mode-hook 'ruler-mode)
(setq-default indent-tabs-mode nil)
(add-hook 'find-file-hook 'whitespace-mode)
(global-set-key (kbd "C-<tab>") (lambda () (interactive) (other-window -1)))
(global-set-key (kbd "C-<return>") #'cua-rectangle-mark-mode)

(smart-tabs-insinuate 'c)
(setq c-default-style '((c-mode-hook "linux")
                        (c++-mode-hook "gnu")
                        (java-mode-hook "gnu")))
(add-hook 'python-mode-hook (lambda () (setq comment-fill-column 72)))
(add-hook 'lua-mode-hook (lambda () (setq lua-indent-level 4)))
;(add-hook 'LaTeX-mode-hook 'prettify-symbols-mode)
(add-hook 'LaTeX-mode-hook
          (lambda () (when (fboundp 'electric-indent-mode)
                       (electric-indent-mode -1))))
(add-hook 'pdf-tools-enabled-hook 'auto-revert-mode)

(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 24))
