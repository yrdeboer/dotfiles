(require 'package)
;;(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)

;; NOTE: Do install flake8 and jedi using your python
;; package manager, otherwise you'll get the message
;; "Flymake blabla blabla will be switche OFF." before
;; every new buffer you open.
(defvar myPackages
  '(better-defaults
    elpy ;; add the elpy package
    material-theme))

(elpy-enable)

;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives
;;              '("org" . "http://orgmode.org/elpa/") t)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://stable.melpa.org/packages/") t)


;; flycheck
;; (package-install 'flycheck)
;; (global-flycheck-mode)

;; jedi
;;(add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)  

;; elpy
;; (elpy-enable)
;; (setq elpy-rpc-backend "jedi")  

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(frame-background-mode (quote light)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-message t) ;; hide the startup message
;; (global-linum-mode t) ;; enable line numbers globally


(load-theme 'solarized-dark t)

(setq scroll-step            1
      scroll-conservatively  10000)

(setq-default indent-tabs-mode nil)
(put 'erase-buffer 'disabled nil)
