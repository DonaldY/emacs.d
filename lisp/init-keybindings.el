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

;; eval after load
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; dwim 
(global-set-key (kbd "M-s o") 'occur-dwim)

;; imenu
(global-set-key (kbd "M-s i") 'counsel-imenu)

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; org
;; r aka remeber
(global-set-key (kbd "C-c r") 'org-capture)


(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

(js2r-add-keybindings-with-prefix "C-c C-m")

;; company remap M-
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))


;; 文件关闭
(provide 'init-keybindings)
