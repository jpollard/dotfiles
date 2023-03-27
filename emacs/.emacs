(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(calendar-setup 'calendar-only)
 '(custom-enabled-themes '(misterioso))
 '(custom-safe-themes
   '("b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" default))
 (custom-set-faces

 '(term-color-black ((t (:foreground "#3F3F3F" :background "#2B2B2B"))))
 '(term-color-red ((t (:foreground "#AC7373" :background "#8C5353"))))
 '(term-color-green ((t (:foreground "#7F9F7F" :background "#9FC59F"))))
 '(term-color-yellow ((t (:foreground "#DFAF8F" :background "#9FC59F"))))
 '(term-color-blue ((t (:foreground "#7CB8BB" :background "#4C7073"))))
 '(term-color-magenta ((t (:foreground "#DC8CC3" :background "#CC9393"))))
 '(term-color-cyan ((t (:foreground "#93E0E3" :background "#8CD0D3"))))
 '(term-color-white ((t (:foreground "#DCDCCC" :background "#656555"))))

 '(term-default-fg-color ((t (:inherit term-color-white))))
 '(term-default-bg-color ((t (:inherit term-color-black))))

 )
 '(icalendar-export-alarms '(10 ((audio) (display))))
 '(newsticker-url-list
   '(("Vice News" "https://www.vice.com/en/rss?locale=en_us" nil nil nil)
     ("Inetecon" "https://www.ineteconomics.org/feed.rss" nil nil nil)
     ("IntelTech" "https://inteltechniques.com/blog/feed/" nil nil nil)
     ("LWN (Linux Weekly News)" "https://lwn.net/headlines/rss" nil nil nil)
     ("Cassido" "https://buttondown.email/cassidoo/rss" nil nil nil)
     ("Wired News" "https://www.wired.com/feed/rss" nil nil nil)
     ("Redhat" "https://www.redhat.com/sysadmin/rss.xml" nil nil nil)
     ("EmacsConf" "https://emacsconf.org/index.rss" nil nil nil)
     ("OSINT Google Alerts" "https://www.google.com/alerts/feeds/06566026579224878738/15460262125446232447" nil nil nil)
     ("US Marshals" "https://www.usmarshals.gov/rss.xml" nil nil nil)))
 '(org-agenda-files
   '("~/Documents/org/agenda/2023/wAgenda.org" "~/Documents/org/agenda/2023/lAgenda.org" "~/Documents/org/cal/wCal.org" "~/Documents/org/cal/lCal.org"))
 '(org-caldav-calendars
   '((:calendar-id "Y2FsOi8vMC8zMQ" :files
		   ("~/Documents/org/agenda/2023/lAgenda.org")
		   :inbox "~/Documents/org/cal/lCal.org")
     (:calendar-id "Y2FsOi8vMC81OA" :files
		   ("~/Documents/org/agenda/2023/wAgenda.org")
		   :inbox "~/Documents/org/cal/wCal.org")))
 '(org-caldav-url "https://dav.mailbox.org/caldav/")
 '(org-capture-templates
   '(("d" "Distractions" entry
      (file+headline "~/Documents/org/agenda/distractions.org" "Notes")
      "* %?
%T")
     ("w" "Work Todo" entry
      (file+olp+datetree "~/Documents/org/agenda/2023/wAgenda.org" "Work Todo")
      "** TODO %? %^g 
 SCHEDULED: %^t" :time-prompt t)
     ("m" "Work Meeting" entry
      (file+olp+datetree "~/Documents/org/agenda/2023/wAgenda.org" "Work Todo")
      "** %? %^g 
 SCHEDULED: %^t" :time-prompt t)
     ("e" "Life Event" entry
      (file+datetree "~/Documents/org/agenda/2023/lAgenda.org")
      "* %? %^g 
 SCHEDULED: %^t" :time-prompt t)
     ("l" "Life Todo" entry
      (file+datetree "~/Documents/org/agenda/2023/lAgenda.org")
      "* TODO %? %^g 
 SCHEDULED: %^t" :time-prompt t)))
 '(org-icalendar-use-scheduled '(event-if-not-todo event-if-todo-not-done todo-start))
 '(org-timer-display 'both nil nil "Set to both")
 '(package-selected-packages
   '(typescript-mode ac-html-angular ac-html org-journal cobol-mode flycheck-hledger flycheck focus org-caldav org-gcal magithub magit pdf-tools slack nov anki-vocabulary anki-mode anki-editor anki-connect pandoc monkeytype pocket-reader pocket-mode flutter eshell-git-prompt dired-git-info dart-mode i-ching geiser scheme-complete rustic hnreader cyberpunk-theme buffer-flip x86-lookup tomatinho sicp evil))
 '(python-shell-virtualenv-root "/home/jwp/anaconda/"))

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

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c C-t") 'org-timer-set-timer)
(global-set-key (kbd "C-c s") 'org-caldav-sync)
(global-set-key (kbd "C-c C-j") 'org-journal-new-entry)

;; Start newsticker
(newsticker-start)
(newsticker-start-ticker)

;; Setup Org Mode
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

;; Setup note taking macros
(fset 'note-header
   (kmacro-lambda-form [?\M-w ?\C-x ?b return ?\C-a ?* ?  ?\C-y return ?\C-x ?b return] 0 "%d"))
(global-set-key "\C-x\C-k1" 'note-header)

(fset 'note-sub-header
   (kmacro-lambda-form [?\M-w ?\C-x ?b return ?\C-a ?*?* ?  ?\C-y return ?\C-x ?b return] 0 "%d"))
(global-set-key "\C-x\C-k2" 'note-sub-header)

(fset 'note
   (kmacro-lambda-form [?\M-w ?\C-x ?b return return return ?\C-a ?\C-y return ?\C-x ?b return] 0 "%d"))
(global-set-key "\C-x\C-k0" 'note)

;; Capture distractions
(global-set-key "\C-c c" 'org-capture)
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)" "POSTPONED(p)" "CANCELLED(c)")))

;; Autosave and backup filtering
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.


;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; Startup caldav sync
(org-caldav-sync)


