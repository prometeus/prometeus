
;;;;;;;;;;; Color Theme ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-foreground-color "#f8f8f2")
(set-background-color "#272822")
(set-cursor-color "#f8f8f0")
(set-face-foreground 'font-lock-comment-face "#95917E")
(set-face-foreground 'font-lock-string-face "#e6db74")
(set-face-foreground 'font-lock-keyword-face "#F92672")
(set-face-foreground 'font-lock-function-name-face "#A6E22E")
(set-face-foreground 'font-lock-variable-name-face "#98fbff")
(set-face-foreground 'font-lock-type-face "#A6E22E")
(set-face-foreground 'region "#272822")
(set-face-background 'region "#66D9EF")
(set-face-foreground 'font-lock-constant-face "#66d9ef") 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; Standart stuff ;;;;;;;;

(ido-mode t)				;Filename Completion
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t) 		;Filesize
(menu-bar-mode 0)
(transient-mark-mode t)			;Make selection visible
(fset 'yes-or-no-p 'y-or-n-p)
(global-font-lock-mode t)
(set-language-environment "UTF-8")
(setq inhibit-startup-message t)
(auto-fill-mode t)
(add-hook 'text-mode-hook 'auto-fill-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;; Indention stuff ;;;;;;;;;;

(setq standard-indent 4)
(setq-default indent-tabs-mode nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;; Autosave and Backup directories ;;;;;;;;;;;;;;;;;;
;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
 (concat "~/.emacs.d/autosaves/" (user-login-name) "/"))

(make-directory autosave-dir t)

(defun make-auto-save-file-name ()
  (concat autosave-dir
   (if buffer-file-name
      (concat "#" (file-name-nondirectory buffer-file-name) "#")
    (expand-file-name
     (concat "#%" (buffer-name) "#")))))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "~/.emacs.d/backups/" (user-login-name) "/"))
(setq backup-directory-alist (list (cons "." backup-dir)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;