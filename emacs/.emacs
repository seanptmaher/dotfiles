;;; package -- summary
;;; Commentary:
;; Sean's Emacs init file

;;; Code:
;;---------------------------------------------
;;MELPA
;;---------------------------------------------
(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f7b0f2d0f37846ef75157f5c8c159e6d610c3efcc507cbddec789c02e165c121" "56911bd75304fdb19619c9cb4c7b0511214d93f18e566e5b954416756a20cc80" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "845103fcb9b091b0958171653a4413ccfad35552bc39697d448941bcbe5a660d" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "054e929c1df4293dd68f99effc595f5f7eb64ff3c064c4cfaad186cd450796db" "a7928e99b48819aac3203355cbffac9b825df50d2b3347ceeec1e7f6b592c647" "ed573618e4c25fa441f12cbbb786fb56d918f216ae4a895ca1c74f34a19cfe67" "0eb3c0868ff890b0c4ee138069ce2a8936a8a69ba150efa6bfb9fb7c05af5ec3" "3788e589eb432e6a515d557cbeb8dc4eaca9e00ae54f932b4bd43ed78605532e" "ef07cb337554ffebfccff8052827c4a9d55dc2d0bc7f08804470451385d41c5c" "4ce13ab8b7a8b44ed912a74312b252b0a3ad79b0da6b1034c0145b1fcfd206cb" "fa477d10f10aa808a2d8165a4f7e6cee1ab7f902b6853fbee911a9e27cf346bc" "030346c2470ddfdaca479610c56a9c2aa3e93d5de3a9696f335fd46417d8d3e4" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default))
 '(package-selected-packages
   '(magit doom-themes evil-collection ediprolog exwm challenger-deep-theme gorepl-mode go-scratch go-playground go-mode geiser evil-surround htmlize gruvbox-theme evil-paredit paredit rust-mode evil-visual-mark-mode kaolin-themes ein smartrep python-mode request websocket markdown-mode which-key darktooth-theme ample-theme noctilux-theme rainbow-delimiters sublime-themes flatland-theme slime)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;----------------------------------------------
;; END MELPA
;;----------------------------------------------

(add-to-list 'load-path "/home/sean/.emacs.d/elisp")

(require 'escreen)
(escreen-install)
(setf evil-want-keybinding nil)
(use-package evil :ensure t)
(use-package evil-collection :ensure t)
(use-package evil-visual-mark-mode :ensure t)
(use-package evil-surround :ensure t :config (global-evil-surround-mode 1))
(use-package which-key :ensure t)

(use-package paredit :ensure t)
(use-package evil-paredit :ensure t)
(use-package rainbow-delimiters :ensure t)

(use-package geiser :ensure t)
(use-package slime :ensure t)

(use-package magit :ensure t)

;; (use-package auctex :ensure t)
(use-package htmlize :ensure t)

;; (use-package go-scratch :ensure t)
;; (use-package go-playground :ensure t)
;; (use-package gorepl-mode :ensure t)
;; (use-package go-mode :ensure t)

(use-package rust-mode :ensure t)
(use-package markdown-mode :ensure t)

(use-package ediprolog :ensure t)

(use-package request :ensure t)
(use-package websocket :ensure t)

(use-package kaolin-themes :ensure t)
;; (use-package smartrep)

(setq tramp-default-method "sshx")

;;; GO COMPILATION MODE
;; (require 'se-go)

(setq evil-want-integration t) ;; This is optional since it's already set to t by default.
(setq evil-want-keybinding nil)
(evil-collection-init)
(evil-mode)
(global-flycheck-mode)

(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq-default tab-width 8)
(setq c-set-style "linux")
(setq c-basic-offset 8)
(c-set-offset 'substatement-open 0)
(c-add-style "radare2"
             '((c-basic-offset . 4)
               (tab-width . 8)
               (indent-tabs-mode . t)
               ;;;; You would need (put 'c-auto-align-backslashes 'safe-local-variable 'booleanp) to enable this
               ;; (c-auto-align-backslashes . nil)
               (c-offsets-alist
                (substatement-open . 0)
                (arglist-intro . ++)
                (arglist-cont . ++)
                (arglist-cont-nonempty . ++)
                (statement-cont . ++)
                )))

(add-hook 'c-mode-hook
          (lambda ()
            (setf gdb-many-windows t)
            (local-set-key (kbd "C-c C-i") 'compile)
            (local-set-key (kbd "C-c C-r") 'gdb)))

; remove splash screen
(setq inhibit-splash-screen t)
; ignore capitalization in eshell autocomplete
(setq pcomplete-ignore-case t)

; this should save the backup files in ~/.emacs_saves to reduce clutter
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

(setq show-paren-delay 0)
(show-paren-mode 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(editorconfig-mode 1)

; set theme, remove scroll bar and title bar
(load-theme 'doom-horizon t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

; set proper font
(add-to-list 'default-frame-alist
	     '(font . "Agave-13"))

(global-visual-line-mode 1) ; wrap lines rounded to words to make reading easier
(global-hl-line-mode 1) ; highlight current row


; Matching parens and rainbow delimiters

; global which-key-mode (displays all available key-combos at any
; given point in a command in a window at the bottom of emacs)
(which-key-mode)

; line numbers
(global-display-line-numbers-mode)
(setq column-number-mode t)

;; reading epubs
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(setq nov-text-width 80)

; get rid of that org mode html validator thing 
(setq org-html-validation-link nil)


;;; Misc bindings
(defun sudo-shell-command (command)
  (interactive "MShell command (root): ")
  (with-temp-buffer
    (cd "/sudo::/")
    (async-shell-command command)))

(global-set-key (kbd "M-@") 'sudo-shell-command)
(global-set-key (kbd "M-#") 'async-shell-command)

;;; LISP
;; evil paredit -- stops you from deleting parens
;; (add-hook 'paredit-enabled-hook 'evil-smartparens-mode)
;; (add-hook 'emacs-lisp-mode-hook 'evil-smartparens-mode)
;; (add-hook 'lisp-mode-hook       'evil-smartparens-mode)
;; (add-hook 'scheme-mode-hook     'evil-smartparens-mode)
(add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)
(add-hook 'lisp-mode-hook       'evil-paredit-mode)
(add-hook 'scheme-mode-hook     'evil-paredit-mode)

; Slime
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))
(setq inferior-lisp-program "/bin/sbcl")
; paredit
(eldoc-add-command
 'paredit-backward-delete
 'paredit-close-round)
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook                  #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook                        #'enable-paredit-mode)
(add-hook 'lisp-mode-hook                        #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook            #'enable-paredit-mode)
(add-hook 'scheme-mode-hook                      #'enable-paredit-mode)

(add-hook 'org-mode-hook 'auto-fill-mode)

(setq geiser-active-implementations '(mit))

;;; END LISP

;;; PROLOG
(add-hook 'prolog-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-i") 'ediprolog-dwim)
            (local-set-key (kbd "C-c C-o") 'ediprolog-remove-interactions)))

;;; END PROLOG

;;; HOON
(require 'hoon-mode)
(setf hoon-herb-path "/home/sean/documents/code/hoon/urbit/pkg/herb/herb")
(eval-after-load 'hoon-mode
  '(progn
     (define-key hoon-mode-map (kbd "C-c C-r") 'hoon-eval-region-in-herb)
     (define-key hoon-mode-map (kbd "C-c C-l") 'hoon-eval-buffer-in-herb)))

;;; END HOON

;;; HASKELL
(require 'hindent)
(add-hook 'haskell-mode-hook #'hindent-mode)

(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path path-separator (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))

(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)))
(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))
;;; END HASKELL

;;; TEX
(setq TeX-parse-self t) ; parse on load
(setq TeX-auto-save t) ; parse on save

(setq TeX-PDF-mode t) ; as opposed to DVI mode

(add-hook 'TeX-mode-hook (lambda () (TeX-fold-mode 1))); Automatically activate TeX-fold-mode.
(add-hook 'TeX-mode-hook #'auto-fill-mode)
(add-hook 'TeX-mode-hook #'prettify-symbols-mode)

(setq LaTeX-babel-hyphen nil); Disable language-specific hyphen insertion.

(setenv "PATH" (concat (getenv "PATH") ":" (expand-file-name "/opt/texlive/2019/bin/x86_64-linux")))
(setq exec-path (append exec-path (list (expand-file-name "/opt/texlive/2019/bin/x86_64-linux"))))

;; This should paste this file into scratch
(let ((filename "~/.emacs.d/startup.txt"))
  (when (and (file-exists-p filename)
             (get-buffer "*scratch*"))
    (with-current-buffer "*scratch*"
      (erase-buffer)
      (insert-file-contents filename))))

;; OCAML
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line

(add-hook 'ocaml-mode-hook #'tuareg-mode)

(provide '.emacs)
;;; .emacs ends here
