(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'org)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))


;; Testing
(setq scroll-conservatively 10000)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (C . t)
   (python . t)
   (emacs-lisp . t)))

(setq org-babel-python-command "python3"
      org-src-fontify-natively t
      org-src-preserve-indentation t
      org-src-tabs-acts-natively t
      org-confirm-babel-evaluate nil
      org-adapt-indentation nil)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; Store all emacs backups in the trash
(setq backup-directory-alist '((".*" . "~/.Trash")))


;;;CUSTOM SET VARIABLES MUST STAY
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(spacemacs-light))
 '(custom-safe-themes
   '("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "fe845acbd6169cb2d1f3f3bf0e761cbee512359438da2ec170aa49400631f853" "77a70a104f0eefd1bade76d53ba6cadfbb6c87eeb9f358acd85d6c5ce9aa02d6" "5f4dfda04fbf7fd55228266c8aab73953d3087cea7fd06dd7f8ff1e4a497c739" default))
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(rust-mode spacemacs-theme org-bullets good-scroll rainbow-delimiters flycheck company origami org-journal markdown-mode magit-badge magit multiple-cursors dmenu slime popup-kill-ring which-key use-package ido-vertical-mode avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-base-face ((t (:inherit nil))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "white"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark orange"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark khaki")))))
