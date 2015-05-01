;;(menu-bar-mode nil)
;;(tool-bar-mode nil)
;;(toggle-scroll-bar -1)
(setq inhibit-startup-message t)
(setq transient-mark-mode t)
(setq mark-even-if-inactive t)

;; don't keep any back-up files
(setq auto-save-default nil)
(setq make-backup-files nil)

;; shows line numbers
(setq line-number-mode t) 
;; shows column 
(setq column-number-mode t) 

;; Paren highlighting for entire expression
(setq show-paren-style (quote expression))
(show-paren-mode)

;; Always enable syntax-highlighting
(require 'font-lock)
(global-font-lock-mode t)

;;use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;;case insensitive search
(setq case-fold-search t)

;; Display date and time in the mode area
;;(setq supress-day-of-week nil)
;;(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;; can also use C-x 5 2 to create a new frames
;; create new frames as necessary instead of all the time
;; F11 to open current buffer in new frame
(global-set-key [f11] "\C-x52")
;; F12 to delete current frame
(global-set-key [f12] 'delete-frame)

;;(global-set-key [C-return] 'execute-extended-command)        ; no longer need to map ctrl-return M-x, this works automatically

;;get lines to wrap in split screen (c-x 3) mode
(setq truncate-partial-width-windows nil)

;;using the buffer name as name of the title in multi-frame mode
(setq frame-title-format "%b")
;;Use the path name for duplicate buffers instead of <2>, <3> etc.
(toggle-uniquify-buffer-names)

;; always highlight current line
(require 'hl-line)
(global-hl-line-mode 1)
;; some more short-cuts
;; goto line
(global-set-key [(meta g)] 'goto-line)
(global-set-key "\C-xg" 'goto-line)
;; toggle highlight current line (it looks odd in terminal emacs)
(global-set-key "\C-xh" 'global-hl-line-mode)
;; Custom shortcut 
;; copy text on F9
(global-set-key [f9] "\M-w")
;; comment-out current selection on ^C^C
(global-set-key "\C-c\C-c" 'comment-region)
;; uncomment current selection on ^C^U
(global-set-key "\C-c\C-u" 'uncomment-region)


(autoload 'two-mode-mode "two-mode-mode")
(add-to-list 'auto-mode-alist '("\\.html\\'" . two-mode-mode))

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))

(autoload 'scss-mode "scss-mode" "Mode for editing sass files" t)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . scss-mode))

(autoload 'php-mode "php-mode" nil t)


;; Colors for shell mode and its ilk
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;Display the current function in the status bar
(setq which-func-modes t)
(which-function-mode)

;; in the terminal emacs show highlight only the matched parenthesis, not the full expression
(defun switch-paren-hl () "Make Paren highlighting to 'parenthesis"
  (interactive)
  (setq show-paren-style (quote parenthesis)))

(global-set-key "\C-xp" 'switch-paren-hl)

;; http://www.emacswiki.org/emacs/WhiteSpace
;; be able to see white space
(load-library "whitespace")
;; ensure only really long lines will be highlighed. The default 80 chars is too less
(setq whitespace-line-column 200)

;; smooth scrolling
(setq scroll-step 5)

;; ediff. split horizontally. don't use the popup command frame
(setq ediff-split-window-function 'split-window-horizontally)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;;hippie - auto complete anything
(global-set-key (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list '(try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-list try-expand-line try-complete-lisp-symbol-partially try-complete-lisp-symbol))


(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(c-echo-syntactic-information-p nil)
 '(current-language-environment "English")
 '(highlight-nonselected-windows t)
 '(gdb-max-frames 400)
 '(gdb-show-main t)
 '(truncate-partial-width-windows nil)
 '(show-paren-mode t nil (paren))
 '(show-paren-style (quote expression)))
