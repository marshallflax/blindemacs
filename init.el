(defvar org-ans2 nil)
(defvar emacspeak-personality-voiceify-faces nil)
(defvar ido-process-ignore-lists nil)

(require 'package)
(package-initialize)
;; (setq package-enable-at-startup nil)

(add-to-list 'load-path "/Users/mgflax/elisp/org-mode/lisp")

(require 'org)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(bongo-enabled-backends (quote (vlc)))
 '(bookmark-default-file "~/gits/personal/bookmarks")
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(dtk-speech-rate-step 50)
 '(eldoc-idle-delay 10)
 '(electric-indent-mode t)
 '(elm-tags-exclude-elm-stuff nil)
 '(emacspeak-auditory-icon-function (quote emacspeak-queue-auditory-icon))
 '(eww-bookmarks-directory "~/gits/personal")
 '(haskell-stylish-on-save t)
 '(ido-max-prospects 3)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(line-number-mode t)
 '(magit-diff-use-overlays nil)
 '(nrepl-sync-request-timeout 30)
 '(org-html-checkbox-type (quote unicode))
 '(package-archive-priorities (quote (("melpa-stable" . 20) ("gnu" . 10) ("melpa" . 0))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (fountain-mode intero haskell-mode recover-buffers diminish exec-path-from-shell flycheck company circe org-bullets magit rainbow-delimiters ess ##))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/configuration.org")

(company-mode)
(winner-mode 1)
(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))
(when (memq window-system '(mac ns)) (global-set-key (kbd "C-z") nil))
(add-hook 'haskell-mode-hook 'intero-mode)
(define-key global-map (kbd "C-h C-k") 'describe-key)

(defun ns-copy-including-primary ()
  (interactive)
  (call-interactively 'kill-ring-save)
  (gui-set-selection 'PRIMARY (buffer-substring (point) (mark t))))

(define-key global-map (kbd "M-ç") 'ns-copy-including-primary)
(define-key global-map (kbd "M-√") 'yank)

