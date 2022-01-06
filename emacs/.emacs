(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(calendar-setup (quote calendar-only))
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" default)))
 '(newsticker-url-list
   (quote
    (("Flipper Zero" "https://blog.flipperzero.one/rss/" nil nil nil)
     ("Vice" "https://www.vice.com/en/rss?locale=en_us" nil nil nil)
     ("Inetecon" "https://www.ineteconomics.org/feed.rss" nil nil nil))))
 '(newsticker-url-list-defaults
   (quote
    (("Debian Security Advisories - Long format" "http://www.debian.org/security/dsa-long.en.rdf")
     ("LWN (Linux Weekly News)" "https://lwn.net/headlines/rss")
     ("Wired News" "https://www.wired.com/feed/rss"))))
 '(package-selected-packages
   (quote
    (pdf-tools slack nov anki-vocabulary anki-mode anki-editor anki-connect pandoc monkeytype pocket-reader pocket-mode flutter eshell-git-prompt dired-git-info dart-mode i-ching geiser scheme-complete rustic hnreader cyberpunk-theme buffer-flip x86-lookup tomatinho sicp evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq load-home-init-file t) ; don't load init file from ~/.xemacs/init.el

(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (package-initialize)

(global-set-key (kbd "C-c l") "org-store-link")
(global-set-key (kbd "C-c a") "org-agenda")
(global-set-key (kbd "C-c c") "org-capture")

;; Start newsticker
(newsticker-start)
(newsticker-start-ticker)

;; Setup Org Mode
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
