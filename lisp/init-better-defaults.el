;; 关闭声音
(setq ring-bell-function 'ignore)

(global-auto-revert-mode 1)

;; 行号
(global-linum-mode t)

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


;; 关闭文件
(provide 'init-better-defaults)
