;; Create a variable to indicate where emacs's configuration is installed
(setq EMACS_DIR "~/.emacs.d/")
;; Avoid garbage collection at statup
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)
;; (setq url-proxy-services
;;    '(("no_proxy" . "^\\(localhost\\|10.*\\)")
;;      ("http" . "127.0.0.1:49644")
;;      ("https" . "127.0.0.1:49644")))
;; All the settings and package installation is set in configuration.org
(org-babel-load-file "~/.emacs.d/emacs-configuration.org")

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 300000000 ; 300mb	
          gc-cons-percentage 0.1)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-palenight))
 '(package-selected-packages
   '(lsp-java lsp-mode helm-lsp lsp-ui treemacs lsp-treemacs dap-mode flycheck yasnippet-snippets company quickrun which-key avy helm-swoop helm-descbinds helm projectile use-package-chords heaven-and-hell doom-themes exec-path-from-shell use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
