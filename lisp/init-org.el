(require 'org)

(setq org-src-fontify-natively t)

;; 设置默认 Org Agenda 文件目录
;;(setq-default org-agenda-files (list "~/org/")
(setq org-agenda-files '("~/.emacs.d"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.emacs.d/gtd.org" "工作安排")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)))

;; r aka remember
(global-set-key (kbd "C-c r") 'org-capture)

;; 关闭文件
(provide 'init-org)
