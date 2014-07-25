;; Setenv
(setenv "LANG" "ja_JP.UTF-8")

;; 言語環境
(set-language-environment "Japanese")

;; 文字コード
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-16le-dos)

;; Shell Mode
(setq shell-mode-hook
      (function (lambda()
                  (set-buffer-process-coding-system 'utf-8-unix
                                                    'utf-8-unix))))

;; Grep
(defadvice grep (around grep-coding-setup activate)
  (let ((coding-system-for-read 'utf-8))
    ad-do-it))

;; key assign
(global-set-key "\C-h" 'delete-backward-char)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
;; auto-complete user settings
(setq ac-auto-start nil)
(setq ac-use-menu-map t)
(ac-set-trigger-key "TAB")
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
(define-key ac-completing-map "TAB" 'ac-complete)
(setq ac-ignore-case t)

;; automatically generated
(setq grep-find-command "find . ! -name '*~' -type f -print0 | xargs -0 lgrep -n -Au8 -Ia ")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt :foreground "brightblue"))))
 '(font-lock-function-name-face ((t (:foreground "brightblue"))))
 '(minibuffer-prompt ((t (:foreground "brightblue")))))
