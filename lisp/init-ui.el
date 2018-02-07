;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 启动屏幕，欢迎界面
(setq inhibit-splash-screen t)

;; 显示行号
(global-linum-mode 1)

;; 高亮当前行
(global-hl-line-mode t)

;; 更改光标的样式
(setq-default cursor-type 'bar)

;; powerline
(add-to-list 'load-path "~/.emacs.d/powerline/")
(require 'powerline)
(setq powerline-arrow-shape 'arrow) ;; the default
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))



;; 文件末尾
(provide 'init-ui)
