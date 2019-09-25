;;---------------------------------------------
;;MELPA
;;---------------------------------------------
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default)))
 '(package-selected-packages
   (quote
    (auctex htmlize gruvbox-theme evil-paredit paredit rust-mode evil-visual-mark-mode kaolin-themes ein smartrep python-mode request websocket markdown-mode which-key darktooth-theme ample-theme noctilux-theme rainbow-delimiters sublime-themes flatland-theme slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;----------------------------------------------
;; END MELPA
;;----------------------------------------------

; get rid of that org mode html validator thing 
(setq org-html-validation-link nil)

; eldoc shows arguments to functions at the bottom
(require 'eldoc) ; if not already loaded

; this should save the backup files in ~/.emacs_saves to reduce clutter
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

(setq show-paren-delay 0)
(show-paren-mode 1)

;; IF YOU WANT EVIL MODE ON STARTUP
(evil-mode)

; proper C formatting and indenting
(setq c-default-style "linux"
      c-basic-offset 8
      indent-tabs-mode nil)

; set theme, remove scroll bar and title bar
(load-theme 'gruvbox t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

; set proper font
(add-to-list 'default-frame-alist
	     '(font . "Agave-13"))

(global-visual-line-mode 1) ; wrap lines rounded to words to make reading easier
(global-hl-line-mode 1) ; highlight current row


; Matching parens and rainbow delimiters
(show-paren-mode 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

; global which-key-mode (displays all available key-combos at any
; given point in a command in a window at the bottom of emacs)
(which-key-mode)

; line numbers
(global-display-line-numbers-mode)
(setq column-number-mode t)

; make sure ein works
(require 'ein)
(require 'ein-notebook)
(require 'ein-subpackages)

; Slime
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))
(setq inferior-lisp-program "/bin/sbcl")

;;; LISP
;; evil paredit -- stops you from deleting parens
(add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)
(add-hook 'lisp-mode-hook       'evil-paredit-mode)
(add-hook 'scheme-mode-hook     'evil-paredit-mode)

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
;;; END LISP


;;; TEX
(setq TeX-parse-self t) ; parse on load
(setq TeX-auto-save t) ; parse on save

(setq TeX-PDF-mode t) ; as opposed to DVI mode

(add-hook 'TeX-mode-hook
	  (lambda () (TeX-fold-mode 1))); Automatically activate TeX-fold-mode.

(setq LaTeX-babel-hyphen nil); Disable language-specific hyphen insertion.

(setenv "PATH" (concat (getenv "PATH") ":" (expand-file-name "/opt/texlive/2019/bin/x86_64-linux")))
(setq exec-path (append exec-path (list (expand-file-name "/opt/texlive/2019/bin/x86_64-linux"))))
