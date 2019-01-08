;; added 20181226
;; 复制粘贴windows
(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)

;;字体：英文字体设置为 Consolas，中文字体设置为微软雅黑
(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
(set-default-font "Consolas 14")
(if (and (fboundp 'daemonp) (daemonp))
    (add-hook 'after-make-frame-functions
	      (lambda (frame)
		(with-selected-frame frame
		  (set-fontset-font "fontset-default"
				    'unicode "Microsoft Yahei 14"))))
  (set-fontset-font "fontset-default" 'unicode "Microsoft Yahei 14"))
;;end 字体

;; added 20190104
;; GTD
(setq org-todo-keywords
    '((sequence "TODO(t!)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
      ))

;; added 20190107
;; close current window
(global-set-key [C-f4] 'kill-this-buffer)

;; added 20190107
;; 配色
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/theme/"))
(load-theme 'monokai-alt t)

;; added 20190107
;; set the default file path
(setq default-directory "~/")

;; added 20190107
;; package list
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")
						("melpa" . "https://melpa.org/packages/")))
(add-to-list 'package-archives
            '("ELPA" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(package-initialize)
