;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(global-set-key (kbd "M-x") 'counsel-M-x)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; Agenda
(global-set-key (kbd "C-c a") 'org-agenda)

;; Hippie 补全 (windows, "M-s M-/ M-/")
(global-set-key (kbd "s-/") 'hippie-expand)

;; format
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; Swiper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h v") 'counsel-find-library)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; 文件关闭
(provide 'init-keybindings)

