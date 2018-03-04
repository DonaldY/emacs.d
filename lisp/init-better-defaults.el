;; 关闭声音
(setq ring-bell-function 'ignore)

(global-auto-revert-mode 1)

;; 禁止自动备份
(setq make-backup-files nil)

;; 禁止自动恢复
(setq auto-save-default nil)

;; 最近文件
(recentf-mode 1)
(setq recentf-max-menu-item 25)

;; 删除/替换 选中字符
(delete-selection-mode 1)

;; 只输入 (y or n) 
(fset 'yes-or-no-p 'y-or-n-p)

;; 高亮括号
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
        (t (save-excursion
             (ignore-errors (backward-up-list))
             (funcall fn)))))

;; 括号对齐
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;; format "indent-buffer"
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
	(indent-buffer)
        (message "Indent buffer.")))))

;; hippie expend is dabbrev expand on steroids
(setq hippie-expand-try-function-list '(try-expand-debbrev
                                        try-expand-debbrev-all-buffers
                                        try-expand-debbrev-from-kill
                                        try-complete-file-name-partially
                                        try-complete-file-name
                                        try-expand-all-abbrevs
                                        try-expand-list
                                        try-expand-line
                                        try-complete-lisp-symbol-partially
                                        try-complete-lisp-symbol))

;; 删除文件操作时询问
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; 重用唯一的一个缓冲区作为 Dired Mode 显示专用缓冲区
(put 'dired-find-alternate-file 'disabled nil)

;; dired C-x C-j 直接进入当前目录
(require 'dired-x)

;; dwin = do what i mea
(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))

;; 设置环境编码
;; (set-language-environment "UTF-8")

(provide 'init-better-defaults)
