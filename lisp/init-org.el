;; 添加 Org-mode 文本内语法高亮
(require 'org)

(setq org-src-fontify-natively t)

;; 设置默认 Org Agenda 文件目录
(setq org-agenda-files '("~/org"))


;; 关闭文件
(provide 'init-org)