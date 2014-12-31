(setq frame-title-format "emacs@%b")

;;Show line number by defaule
(require 'linum)
(setq linum-format "%3d ")
(add-hook 'find-file-hooks 'linum-mode)
(add-hook 'ibuffer-hooks 'linum-mode)

;;Set linux default tab width
(setq-default c-default-style "linux"
	      c-basic-offset 4
	      tab-width 4)

;;Don't auto backupfiles
(setq make-backup-files nil)

;;Using ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;Split the window vertically by default
(setq split-height-threshold nil)
(setq split-width-threshold 0)

;;Set hook for enable gtags mode in C/C++ and java files
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

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
 '(default ((t (:family "FreeMono" :foundry "unknown" :slant normal :weight bold :height 158 :width normal)))))
