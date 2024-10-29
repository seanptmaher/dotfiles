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
 '(auth-source-save-behavior nil)
 '(custom-safe-themes
   '("23c806e34594a583ea5bbf5adf9a964afe4f28b4467d28777bcba0d35aa0872e" "2ce76d65a813fae8cfee5c207f46f2a256bac69dacbb096051a7a8651aa252b0" "f7b0f2d0f37846ef75157f5c8c159e6d610c3efcc507cbddec789c02e165c121" "56911bd75304fdb19619c9cb4c7b0511214d93f18e566e5b954416756a20cc80" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "845103fcb9b091b0958171653a4413ccfad35552bc39697d448941bcbe5a660d" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "054e929c1df4293dd68f99effc595f5f7eb64ff3c064c4cfaad186cd450796db" "a7928e99b48819aac3203355cbffac9b825df50d2b3347ceeec1e7f6b592c647" "ed573618e4c25fa441f12cbbb786fb56d918f216ae4a895ca1c74f34a19cfe67" "0eb3c0868ff890b0c4ee138069ce2a8936a8a69ba150efa6bfb9fb7c05af5ec3" "3788e589eb432e6a515d557cbeb8dc4eaca9e00ae54f932b4bd43ed78605532e" "ef07cb337554ffebfccff8052827c4a9d55dc2d0bc7f08804470451385d41c5c" "4ce13ab8b7a8b44ed912a74312b252b0a3ad79b0da6b1034c0145b1fcfd206cb" "fa477d10f10aa808a2d8165a4f7e6cee1ab7f902b6853fbee911a9e27cf346bc" "030346c2470ddfdaca479610c56a9c2aa3e93d5de3a9696f335fd46417d8d3e4" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default))
 '(exwm-floating-border-color "#16161c")
 '(fci-rule-color "#f9cec3")
 '(highlight-tail-colors ((("#203a3b") . 0) (("#283841") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#16161c" "#e95678"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#16161c" "#09f7a0"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#16161c" "#6a6a6a"))
 '(magit-refresh-verbose t)
 '(objed-cursor-color "#e95678")
 '(package-selected-packages
   '(ahk-mode js-format dtrace-script-mode dtrace-mode gn-mode jupyter zig-mode bazel evil-numbers fish-mode haskell-mode magit js2-mode tex rustic lsp-ui lsp-mode nov auctex undo-tree hindent editorconfig flycheck evil use-package racket-mode company-jedi jedi elpy visual-regexp-steroids yard-mode enh-ruby-mode rinari robe ruby-end mu4e ox-latex-subfigure ess erlang slime vterm company doom-themes evil-collection ediprolog exwm challenger-deep-theme gorepl-mode go-scratch go-playground go-mode geiser evil-surround htmlize gruvbox-theme evil-paredit paredit rust-mode evil-visual-mark-mode kaolin-themes ein smartrep python-mode request websocket markdown-mode which-key darktooth-theme ample-theme noctilux-theme rainbow-delimiters sublime-themes flatland-theme))
 '(pdf-view-midnight-colors (cons "#c7c9cb" "#232530"))
 '(rustic-ansi-faces
   ["#232530" "#e95678" "#09f7a0" "#fab795" "#21bfc2" "#6c6f93" "#59e3e3" "#c7c9cb"])
 '(safe-local-variable-values
   '((buffer-file-coding-system . dos)
     (eval c-set-offset 'inexpr-class 0)
     (c-basic-offset 4)
     (tab-width 4)))
 '(vc-annotate-background "#232530")
 '(vc-annotate-color-map
   (list
    (cons 20 "#09f7a0")
    (cons 40 "#59e19c")
    (cons 60 "#a9cc98")
    (cons 80 "#fab795")
    (cons 100 "#f6ab8f")
    (cons 120 "#f39f89")
    (cons 140 "#f09383")
    (cons 160 "#c48788")
    (cons 180 "#987a8d")
    (cons 200 "#6c6f93")
    (cons 220 "#95668a")
    (cons 240 "#bf5e81")
    (cons 260 "#e95678")
    (cons 280 "#c95b74")
    (cons 300 "#a96071")
    (cons 320 "#89656d")
    (cons 340 "#f9cec3")
    (cons 360 "#f9cec3")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
;;----------------------------------------------
;; END MELPA
;;----------------------------------------------

(add-to-list 'load-path "~/.emacs.d/elisp")

(setq evil-want-integration t) ;; This is optional since it's already set to t by default.
(setq evil-want-keybinding nil)

(use-package evil :ensure t)
(use-package evil-collection :ensure t)
(use-package undo-tree :ensure t
  :config
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo"))))

(evil-collection-init)
(evil-mode)
(global-undo-tree-mode)
(evil-set-undo-system 'undo-tree)

(use-package evil-visual-mark-mode :ensure t)
(use-package evil-surround :ensure t :config (global-evil-surround-mode 1))
(use-package evil-numbers :ensure t
  :config
  (evil-define-key '(normal visual) 'global (kbd "C-c +") 'evil-numbers/inc-at-pt)
  (evil-define-key '(normal visual) 'global (kbd "C-c -") 'evil-numbers/dec-at-pt)
  (evil-define-key '(normal visual) 'global (kbd "C-c C-+") 'evil-numbers/inc-at-pt-incremental)
  (evil-define-key '(normal visual) 'global (kbd "C-c C--") 'evil-numbers/dec-at-pt-incremental)
  )

;; (use-package auctex :ensure t)
(use-package tex
  :defer t
  :ensure auctex
  :config
  (setq TeX-auto-save t))

(use-package fish-mode :ensure t)
(use-package which-key :ensure t)
(use-package paredit :ensure t)
(use-package evil-paredit :ensure t)
(use-package rainbow-delimiters :ensure t)
;; (use-package geiser :ensure t)
(use-package racket-mode :ensure t)
(use-package slime :ensure t)
(use-package doom-themes :ensure t)
(use-package hindent :ensure t)
(use-package magit :ensure t :config
  (setf magit-bury-buffer-function #'magit-mode-quit-window)
  (remove-hook 'magit-status-sections-hook #'magit-insert-tags-header)
  (remove-hook 'magit-status-sections-hook #'magit-insert-status-headers)
  (remove-hook 'magit-status-sections-hook #'magit-insert-untracked-files)                      
  
  ;; (remove-hook 'magit-status-sections-hook #'magit-insert-stashes)
  ;; (remove-hook 'magit-status-sections-hook #'magit-insert-unpushed-to-upstream-or-recent)
  )
(use-package htmlize :ensure t)
(use-package flycheck :ensure t)
(use-package editorconfig :ensure t)
(use-package gn-mode :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.gn\\'" . gn-mode))
  )
(use-package dtrace-script-mode :ensure t)

(use-package lsp-mode
  :ensure
  :commands lsp
  :config
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-eldoc-hook nil)
  (setq lsp-enable-symbol-highlighting nil)
  (setq lsp-signature-auto-activate nil)
  ;; (lsp-rust-analyzer-server-display-inlay-hints t)

  (setq lsp-enable-symbol-highlighting nil)
  (setq eldoc-idle-delay 0.15)
  (setq lsp-clients-clangd-args '("-j" "1" "--background-index-priority=low"))
  (setq lsp-clangd-binary-path "c:\\src\\chromium\\src\\third_party\\llvm-build\\Release+Asserts\\bin\\clangd")

  (setq gc-cons-threshold (* 2 1024 1024)
        read-process-output-max (* 1024 1024)
        treemacs-space-between-root-nodes nil
        company-idle-delay 0.0
        company-minimum-prefix-length 1
        lsp-idle-delay 0.1) ;; clangd is fast
  (setq eldoc-echo-area-use-multiline-p nil))


;; (add-hook 'lsp-eldoc-hook
;;           (lambda ()
;;             (if eldoc-last-message 
;;                 (message
;;                  (car (split-string eldoc-last-message "\n")))
;;               (message "fuck bro"))))

(use-package markdown-mode :ensure t)
(use-package ediprolog :ensure t)
(use-package request :ensure t)
(use-package websocket :ensure t)
(use-package kaolin-themes :ensure t)
(use-package elpy :ensure t)
(use-package company :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (global-set-key (kbd "M-TAB") 'company-complete))
(use-package undo-tree :ensure t)
;; reading epubs
(use-package nov
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
  (setq nov-text-width 80)
  (setq nov-unzip-program "C:\\ProgramData\\chocolatey\\bin\\unzip.exe")

  (defun nov-search (pattern)
    (interactive "sEnter search pattern: ")
    (let ((version nov-epub-version)
          (index 1)
          results)
      (while (< index (1- (length nov-documents)))
        (seq-let (id &rest path) (aref nov-documents index)
          (let (;; HACK: this should be looked up in the manifest
                (imagep (seq-find (lambda (item) (string-match-p (car item) path))
                                  image-type-file-name-regexps))
                ;; NOTE: allows resolving image references correctly
                (default-directory (file-name-directory path)))
            (unless imagep
              (with-temp-buffer
                (if (and (version< version "3.0") (eq id nov-toc-id))
                    (insert (nov-ncx-to-html path))
                  (insert (nov-slurp path)))
                (goto-char (point-min))
                (when (search-forward pattern nil t)
                  (nov-render-html)
                  (goto-char (point-min))
                  (while (search-forward pattern nil t)
                    (push (list (format "%d %s" index
                                        (replace-regexp-in-string "\n" " "
                                                                  (thing-at-point 'line)))
                                index (point))
                          results)))))
            (setq index (1+ index)))))
      ;; (print results)))
      (seq-let (index point) (alist-get (completing-read "Jump to: " (reverse results)) results
                                        nil nil #'string=)
        (nov-goto-document index)
        (goto-char point))))
  )

(use-package bazel :ensure t)

(setq tramp-default-method "sshx")

(setq grep-command "grep --color -nirH --null -e ") 

(setq default-directory "c:/src/")


;; remove splash screen
(setq inhibit-splash-screen t)
; ignore capitalization in eshell autocomplete
(setq pcomplete-ignore-case t)

(setq-default fill-column 80)

; this should save the backup files in ~/.emacs_saves to reduce clutter
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

; Matching parens and rainbow delimiters
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
	     '(font . "Agave-12"))

(global-visual-line-mode 1) ; wrap lines rounded to words to make reading easier
(global-hl-line-mode 1) ; highlight current row

;; This is for the french keyboard (and other dead keys)
(require 'iso-transl)

;; This should paste this file into scratch
(let ((filename "~/.emacs.d/startup.txt"))
  (when (and (file-exists-p filename)
             (get-buffer "*scratch*"))
    (with-current-buffer "*scratch*"
      (erase-buffer)
      (insert-file-contents filename))))


; global which-key-mode (displays all available key-combos at any
; given point in a command in a window at the bottom of emacs)
(which-key-mode)

(setq column-number-mode t)

;; disable weird sound when I make error
(setq ring-bell-function 'ignore)

(global-prettify-symbols-mode)

(server-start)

                                        ; get rid of that org mode html validator thing 
(setq org-html-validation-link nil)

;;; C STUFF
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq-default tab-width 8)
(setq c-set-style "linux")
(setq c-basic-offset 8)
(c-set-offset 'substatement-open 0)

(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'objc-mode-hook 'lsp)
(add-hook 'c-mode-hook
          (lambda ()
            (setf gdb-many-windows t)
            (local-set-key (kbd "C-c C-i") 'compile)
            (local-set-key (kbd "C-c C-r") 'gdb)))

(require 'google-c-style)

(add-to-list 'auto-mode-alist '("\\.mm\\'" . c++-mode))
(add-hook 'c-mode-hook
          (lambda ()
            (when (string-match "c:/src/chromium/src/.*" buffer-file-name)
              (c++-mode))))

(add-hook 'c-mode-common-hook (lambda () (set-fill-column 80)))
(add-hook 'c++-mode-hook (lambda () (set-fill-column 80)))

(add-hook 'c++-mode-hook      'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'objc-mode-hook     'google-set-c-style)


(defun next-file (filename)
  (let* ((file (file-name-nondirectory filename))
         (dir (file-name-directory filename))
         (candidates
          (cond
           ((string-match ".*_unittest.cc$" file)
            (list 
             (string-replace "_unittest.cc" ".h" file)
             (string-replace "_unittest.cc" ".cc" file)
             file))
           ((string-match ".*.h$" file)
            (list 
             (string-replace ".h" ".cc" file)
             (string-replace ".h" "_unittest.cc" file)
             file))
           ((string-match ".*.cc$" file)
            (list 
             (string-replace ".cc" "_unittest.cc" file)
             (string-replace ".cc" ".h" file)
             file)))))
    ;; candidates
    (file-name-concat dir (cl-find-if (lambda (x) (file-exists-p (file-name-concat dir x))) candidates))))

;; (next-file
;;  "/home/sean/documents/code/chromium/src/base/task/thread_pool/thread_group_semaphore.cc")

(defun find-next-file ()
  (interactive)
  (unless buffer-file-name
    (user-error "The current buffer isn't visiting a file"))
  (let ((newname (next-file buffer-file-name)))
    (if (null newname)
        (error (concat "No next file for " buffer-file-name))
      (find-file newname))))

(add-hook 'c++-mode-hook
          (lambda () (local-set-key (kbd "C-c o") 'find-next-file)))
;;; END C++ BINDINGS

;;; Misc bindings

(defun open-clip-in-chromium ()
  (interactive)
  (let ((filename (current-kill 0)))
    (message (concat "got chrome path " filename))
    (find-file (concat "c:/src/chromium/src/" filename))
    )
  )
(global-set-key (kbd "M-i") 'open-clip-in-chromium)

(defun link-to-ccs ()
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
        (let ((chrome-path (string-replace "c:/src/chromium/src/" "" filename)))
          (if (not (string= chrome-path filename))
              (message (concat "https://source.chromium.org/chromium/chromium/src/+/main:"
                               chrome-path
                               ";l="
                               (string-replace "Line " "" (what-line))))
              (message "failed trimming the path! are you in chromium?")))
      (message "Couldn't find it!"))))

(defun open-ccs ()
  (interactive)
  (add-to-list 'display-buffer-alist '("*Async Shell Command*" display-buffer-no-window (nil)))
  (let ((ccs-path (link-to-ccs)))
    (when ccs-path
      (async-shell-command (concat "\"C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe\" \"" ccs-path "\""))))
  (setf display-buffer-alist (cdr display-buffer-alist)))

(global-set-key (kbd "M-o") 'open-ccs)


(defun sudo-shell-command (command)
  (interactive "MShell command (root): ")
  (with-temp-buffer
    (cd "/sudo::/")
    (async-shell-command command)))
(global-set-key (kbd "M-@") 'sudo-shell-command)
(global-set-key (kbd "M-#") 'async-shell-command)

(defun revert-buffer-no-confirm ()
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))

(global-set-key (kbd "C-x C-r") 'revert-buffer-no-confirm)

(defun copy-lines ()
  (interactive)
  (kill-new (concat
             (file-name-nondirectory
              (buffer-file-name
               (window-buffer
                (minibuffer-selected-window))))
             ":"
             (int-to-string (line-number-at-pos)))))


(defun copy-org-file-link ()
  (interactive)
  (kill-new (concat
             "[["
             "file:"
             (buffer-file-name
              (window-buffer
               (minibuffer-selected-window)))
             "::"
             (int-to-string (line-number-at-pos))
             "][")))



(global-set-key (kbd "C-c b") 'copy-lines)
(global-set-key (kbd "C-c l") 'copy-org-file-link)
;;; End misc bindings

;;; LISP

(add-hook 'lisp-interaction-mode-hook
          '(lambda () (local-set-key (kbd "C-x C-j") #'eval-print-last-sexp)))
;; evil paredit -- stops you from deleting parens
(add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)
(add-hook 'lisp-mode-hook       'evil-paredit-mode)
(add-hook 'scheme-mode-hook     'evil-paredit-mode)
; Slime
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))
(setq inferior-lisp-program "/usr/bin/sbcl")
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
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'TeX-mode-hook 'auto-fill-mode)

(setq geiser-active-implementations '(guile))
;;; END LISP

;;; PROLOG
(add-hook 'prolog-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-i") 'ediprolog-dwim)
            (local-set-key (kbd "C-c C-o") 'ediprolog-remove-interactions)))
;;; END PROLOG

;;; TEX
(setq TeX-parse-self t) ; parse on load
(setq TeX-auto-save t) ; parse on save
(setq TeX-PDF-mode t) ; as opposed to DVI mode
(add-hook 'TeX-mode-hook (lambda () (TeX-fold-mode 1))); Automatically activate TeX-fold-mode.
;; (add-hook 'TeX-mode-hook #'auto-fill-mode)
;; (add-hook 'TeX-mode-hook #'prettify-symbols-mode)
(setq LaTeX-babel-hyphen nil); Disable language-specific hyphen insertion.
(setenv "PATH" (concat (getenv "PATH") ":" (expand-file-name "/opt/texlive/2019/bin/x86_64-linux")))
(setq exec-path (append exec-path (list (expand-file-name "/opt/texlive/2019/bin/x86_64-linux"))))
(setq exec-path (append exec-path (list (expand-file-name "/opt/texlive/2020/bin/x86_64-linux"))))
(setq org-latex-compiler "pdflatex")
;;; END TEX


;;; Latex/org-mode/r
(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-packages-alist '("" "minted"))
  (add-to-list 'org-latex-packages-alist '("margin=1in" "geometry" nil))
  (setq org-latex-listings 'minted)
  (setq org-latex-pdf-process
        '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")))
(setq org-highlight-latex-and-related '(latex script entities))
(setq org-export-latex-listings 'minted)
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(setq org-src-fontify-natively t)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (latex . t)
   (python . t)
   (lisp . t)))
(setq org-babel-python-command "python3")

(defun my-org-confirm-babel-evaluate (lang body)
  (not (string= lang "python")))  ;don't ask for ditaa
(setq org-confirm-babel-evaluate #'my-org-confirm-babel-evaluate)

(require 'ox-latex)
;;; END R

(provide '.emacs)
;;; .emacs ends here
