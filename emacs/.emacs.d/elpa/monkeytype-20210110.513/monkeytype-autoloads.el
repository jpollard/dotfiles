;;; monkeytype-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "monkeytype" "monkeytype.el" (0 0 0 0))
;;; Generated autoloads from monkeytype.el

(autoload 'monkeytype-region "monkeytype" "\
Type marked region from START to END.

\\[monkeytype-region]

\(fn START END)" t nil)

(autoload 'monkeytype-repeat "monkeytype" "\
Repeat run.

\\[monkeytype-repeat]

\(fn)" t nil)

(autoload 'monkeytype-fortune "monkeytype" "\
Type fortune.

\\[monkeytype-fortune]

\(fn)" t nil)

(autoload 'monkeytype-buffer "monkeytype" "\
Type entire current buffet.

\\[monkeytype-buffer]

\(fn)" t nil)

(autoload 'monkeytype-pause "monkeytype" "\
Pause run.

\\[monkeytype-pause]

\(fn)" t nil)

(autoload 'monkeytype-stop "monkeytype" "\
Finish run.

\\[monkeytype-stop]

\(fn)" t nil)

(autoload 'monkeytype-resume "monkeytype" "\
Resume run.

\\[monkeytype-resume]

\(fn)" t nil)

(autoload 'monkeytype-mistyped-words "monkeytype" "\
Practice mistyped words for current test.

\\[monkeytype-mistyped-words]

\(fn)" t nil)

(autoload 'monkeytype-hard-transitions "monkeytype" "\
Practice hard key combinations/transitions for current test.

\\[monkeytype-hard-transitions]

\(fn)" t nil)

(autoload 'monkeytype-save-mistyped-words "monkeytype" "\
Save mistyped words for current test.

See also: `monkeytype-load-words-from-file'
See also: `monkeytype-most-mistyped-words'

\\[monkeytype-save-mistyped-words]

\(fn)" t nil)

(autoload 'monkeytype-save-hard-transitions "monkeytype" "\
Save hard transitions for current test.

See also: `monkeytype-load-words-from-file'

\\[monkeytype-save-hard-transition]

\(fn)" t nil)

(autoload 'monkeytype-load-text-from-file "monkeytype" "\
Prompt user to enter text-file to use for typing.
Buffer will be filled with the vale of `fill-column' if
`monkeytype-auto-fill' is set to true.

\\[monkeytype-load-text-from-file]

\(fn)" t nil)

(autoload 'monkeytype-load-words-from-file "monkeytype" "\
Prompt user to enter words-file to use for typing.

Words will be randomized if `monkeytype-randomize' is set to true.
Words will be downcased if `monkeytype-downcase' is set to true.
Words special characters will get removed based on
`monkeytype-excluded-chars-regexp'.
Buffer will be filled with the vale of `fill-column' if
`monkeytype-words-auto-fill' is set to true.

\\[monkeytype-load-words-from-file]

\(fn)" t nil)

(autoload 'monkeytype-region-as-words "monkeytype" "\
Put the marked region from START to END in typing buffer.

Words will be randomized if `monkeytype-randomize' is set to true.
Words will be downcased if `monkeytype-downcase' is set to true.
Words special characters will get removed based on
`monkeytype-excluded-chars-regexp'.
Buffer will be filled with the vale of `fill-column' if
`monkeytype-auto-fill' is set to true.

\\[monkeytype-region-as-words]

\(fn START END)" t nil)

(autoload 'monkeytype-most-mistyped-words "monkeytype" "\
Type most mistyped words from all word-files in `monkeytype-directory'.

See: `monkeytype-save-mistyped-words' for how word-files are saved.

\\[monkeytype-most-mistyped-words]

\(fn)" t nil)

(autoload 'monkeytype-save-text-from-url "monkeytype" "\
Download URL to `monketype-directory', naming it FILE-NAME.

This function shells out to pandoc(1) which character-encodes in UTF-8
so some characters might not be desirable for monkeytyping, so the custom
`monkeytype-asciify' option has be given to optionally allow for
further character encoding to ASCII (using iconv(1)).

\(fn URL FILE-NAME)" t nil)

(autoload 'monkeytype-toggle-mode-line "monkeytype" "\
Hide or show WPM results in mode-line.

\(fn)" t nil)

(autoload 'monkeytype-wpm-peek "monkeytype" "\
Hide/Show overlay with WPM info.

\(fn)" t nil)

(autoload 'monkeytype-mode "monkeytype" "\
Monkeytype mode is a minor mode for speed/touch typing.

\\{monkeytype-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "monkeytype" '("monke")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; monkeytype-autoloads.el ends here
