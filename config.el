;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Navy Tian"
      user-mail-address "hj.tian@aftership.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Hack Nerd Font Mono" :size 15 :weight 'Regular)
     doom-variable-pitch-font (font-spec :family "Hack Nerd Font Mono" :size 15))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-nord-light)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;


;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq auto-save-default t
      make-backup-files t)
(setq-default history-length 1000)
(setq create-lockfiles nil)

(setq confirm-kill-emacs nil)

(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)
(setq projectile-project-search-path '("~/AfterShip" "~/github"))
(setq projectile-ignored-projects '("~/" "/tmp"))

(setq +format-with-lsp nil)

(setq flycheck-flake8-maximum-line-length 120)
(setq-default flycheck-disabled-checkers '(python-pylint python-mypy pydocstyle python-pycompile))


(after! company
  (setq company-idle-delay 0.1
        company-tooltip-align-annotations t
        company-show-quick-access t
        company-minimum-prefix-length 1))

(setq company-backends '(:separate company-semantic company-bbdb company-cmake company-clang company-oddmuse company-dabbrev company-files company-gtags company-etags company-keywords company-yasnippet company-capf))
(setq +lsp-company-backends '(:separate company-semantic company-bbdb company-cmake company-clang company-oddmuse company-dabbrev company-files company-gtags company-etags company-keywords company-yasnippet company-capf))


(setq lsp-enable-file-watchers nil)
(setq lsp-file-watch-threshold nil)

(setq yas-triggers-in-field t)

; mapping
(map! :leader
      :desc "Quickrun buffer code"
      "c r" #'(lambda() (interactive) (quickrun) (message "Successed: OK")))


(define-key evil-motion-state-map (kbd "C-h") #'evil-window-left)
(define-key evil-motion-state-map (kbd "C-j") #'evil-window-down)
(define-key evil-motion-state-map (kbd "C-k") #'evil-window-up)
(define-key evil-motion-state-map (kbd "C-l") #'evil-window-right)

(set-formatter! 'black "black -l 119 -q -")

(setq auth-sources '("~/.authinfo"))

(setq frame-title-format '("%b - Doom Emacs - 码码要洗手"))
(setq icon-title-format '("%b - Doom Emacs - 码码要洗手"))

(setq rustic-cargo-bin "~/.cargo/bin/cargo")

(setq org-src-fontify-natively t)
