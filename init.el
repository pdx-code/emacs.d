(menu-bar-mode -1)
(linum-mode 1)

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/packages")
(require 'key-chord)
(key-chord-mode 1)

;; ------------------------
;; Buffer navigation
;; ------------------------
(load "~/.emacs.d/packages/mybuffers.el")
(global-set-key [(control tab)] 'mybuffers-switch)

;; ------------------------
;; ace-jump-mode navigation
;; ------------------------
(require 'ace-jump-mode)
;; (define-key evil-normal-state-map "  " 'ace-jump-mode)
;; (define-key evil-normal-state-map " k" 'ace-jump-char-mode)
;; (define-key evil-normal-state-map " l" 'ace-jump-line-mode)

;; ------------------------
;; evil-mode
;; ------------------------
(add-to-list 'load-path "~/.emacs.d/evil") ; only without ELPA/el-get
(require 'evil)
(evil-mode 1)

;; ------------------------
;; evil-mode key-chords
;; ------------------------
(key-chord-define evil-normal-state-map ".." 'evil-force-normal-state)
(key-chord-define evil-visual-state-map ".." 'evil-change-to-previous-state)
(key-chord-define evil-insert-state-map ".." 'evil-normal-state)
(key-chord-define evil-replace-state-map ".." 'evil-normal-state)

;; (define-key evil-normal-state-map "B" 'ido-switch-buffer)

;; ------------------------
;; Version Control System (Magit)
;; ------------------------
(require 'magit)
(global-set-key [f1] 'magit-status)

;; (global-set-key (kbd "M-RET") 'newline-anywhere)
;; (global-set-key (kbd "M-S-RET") 'newline-on-previous-line-anywhere)
