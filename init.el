(package-initialize)

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
 '(confirm-kill-emacs (quote y-or-n-p))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(dired-listing-switches "-alh")
 '(dtk-speech-rate-base 150)
 '(dtk-speech-rate-step 60)
 '(eldoc-idle-delay 10)
 '(electric-indent-mode t)
 '(elm-tags-exclude-elm-stuff nil)
 '(emacspeak-auditory-icon-function (quote emacspeak-queue-auditory-icon))
 '(eww-bookmarks-directory "~/gits/personal")
 '(fill-column 80)
 '(gc-cons-threshold 20000000)
 '(haskell-stylish-on-save t)
 '(ido-max-prospects 3)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(initial-scratch-message nil)
 '(line-number-mode t)
 '(mac-default-speech-rate 300)
 '(magit-diff-use-overlays nil)
 '(mouse-yank-at-point t)
 '(nrepl-sync-request-timeout 30)
 '(ns-pop-up-frames nil)
 '(org-ellipsis "⤵")
 '(org-html-checkbox-type (quote unicode))
 '(org-log-done (quote time))
 '(org-src-fontify-natively t)
 '(org-src-tab-acts-natively t)
 '(org-src-window-setup (quote current-window))
 '(package-archive-priorities (quote (("melpa-stable" . 20) ("gnu" . 10) ("melpa" . 0))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (recover-buffers diminish exec-path-from-shell flycheck company circe org-bullets magit rainbow-delimiters)))
 '(show-paren-delay 0.0)
 '(text-scale-mode-step 1.1)
 '(vc-follow-symlinks t)
 '(visible-bell t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/configuration.org")

