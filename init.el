;;; init.el --- Summary
;;; Commentary:
;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents (package-refresh-contents))
(unless (package-installed-p 'use-package) (package-install 'use-package))

(setq auto-save-default nil
      custom-file "~/.emacs.d/custom.el"
      default-input-method 'japanese-skk
      load-prefer-newer t
      make-backup-files nil
      ring-bell-function 'ignore)

(setq-default c-basic-offset 4
              display-fill-column-indicator-column 100
              flycheck-disabled-checkers '(c/c++-clang)
              flycheck-gcc-language-standard "gnu11"
              indent-tabs-mode nil)

(bind-key "C-h" 'delete-backward-char)
(bind-key "C-x ;" 'comment-line)

(delete-selection-mode t)
(electric-pair-mode 1)
(global-display-line-numbers-mode)
(load-theme 'wombat)
(menu-bar-mode 0)
(set-language-environment 'English)

(add-hook 'prog-mode-hook
          (lambda () (display-fill-column-indicator-mode)))

(add-hook 'c-mode-hook
          (lambda () (c-set-style "K&R")))

(add-hook 'enh-ruby-mode-hook
          (lambda () (setq display-fill-column-indicator-column 120)))

(use-package add-node-modules-path
  :ensure t
  :hook ((js-mode typescript-mode web-mode) . add-node-modules-path))

(use-package company
  :bind
  ("C-c C-c" . company-complete)
  :custom
  (company-idle-delay 2)
  :diminish company-mode
  :ensure t
  :hook (after-init . global-company-mode))

(use-package counsel
  :config
  (counsel-mode 1)
  :diminish counsel-mode
  :ensure t)

(use-package crystal-mode
  :mode "\\.cr\\'"
  :ensure t)

(use-package ddskk
  :custom
  (skk-jisyo-code "utf-8")
  (skk-server-host "localhost")
  (skk-server-portnum 1178)
  :defer t
  :ensure t)

(use-package diminish
  :config
  (diminish 'abbrev-mode)
  (diminish 'eldoc-mode)
  :ensure t)

(use-package dockerfile-mode
  :ensure t)

(use-package dired
  :bind
  (:map dired-mode-map
        ("i" . dired-subtree-insert)
        ("r" . dired-subtree-remove))
  :custom (dired-use-ls-dired nil))

(use-package dired-subtree
  :commands (dired-subtree-insert dired-subtree-remove)
  :ensure t)

(use-package enh-ruby-mode
  :ensure t
  :mode "\\(?:\\.rb\\|.ru\\|.rake\\|\\(?:Gem\\|Rake\\|Brew\\)file\\)\\'")

(use-package flycheck
  :config
  (global-flycheck-mode)
  :custom
  (flycheck-idle-change-delay 1)
  :ensure t)

(use-package git-gutter
  :config
  (global-git-gutter-mode t)
  :ensure t)

(use-package ivy
  :config
  (ivy-mode 1)
  :diminish ivy-mode
  :ensure t)

(use-package ivy-rich
  :config
  (ivy-rich-mode 1)
  :ensure t)

(use-package js
  :custom
  (js-indent-level 2)
  :mode ("\\.js\\'" . js-mode))

(use-package lsp-mode
  :diminish lsp-mode
  :ensure t
  :hook (enh-ruby-mode . lsp))

(use-package magit
  :bind ("C-c g" . magit)
  :ensure t)

(use-package markdown-mode
  :ensure t
  :mode (("\\.md\\'" . gfm-mode)))

(use-package php-mode
  :ensure t)

(use-package projectile
  :ensure t)

(use-package projectile-rails
  :bind-keymap
  ("C-c r" . projectile-rails-command-map)
  :config
  (projectile-rails-global-mode)
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :hook ((prog-mode slime-repl-mode) . rainbow-delimiters-mode))

(use-package ruby-electric
  :diminish ruby-electric-mode
  :ensure t
  :hook (enh-ruby-mode . ruby-electric-mode))

(use-package tide
  :custom
  (company-tooltip-align-annotations t)
  (flycheck-check-syntax-automatically '(save mode-enabled))
  :ensure t
  :hook (typescript-mode . tide-mode)
  :config
  (tide-setup)
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (add-hook 'before-save-hook 'tide-format-before-save))

(use-package typescript-mode
  :custom
  (typescript-indent-level 2)
  :ensure t)

(use-package undo-tree
  :custom
  (undo-tree-auto-save-history nil)
  :config
  (global-undo-tree-mode 1)
  :diminish undo-tree-mode
  :ensure t)

(use-package web-mode
  :custom
  (web-mode-auto-close-style 2)
  (web-mode-auto-quote-style 2)
  (web-mode-block-padding 2)
  (web-mode-code-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-enable-auto-closing t)
  (web-mode-enable-auto-pairing t)
  (web-mode-enable-auto-quoting t)
  (web-mode-markup-indent-offset 2)
  (web-mode-script-padding 2)
  (web-mode-style-padding 2)
  :ensure t
  :mode "\\(?:\\.erb\\|\\.html?\\|.s?css\\)\\'")

(use-package which-key
  :diminish which-key-mode
  :ensure t
  :hook (after-init . which-key-mode))

(use-package whitespace
  :custom
  (whitespace-action '(auto-cleanup))
  (whitespace-space-regexp "\\(\u3000+\\)")
  (whitespace-style '(face trailing spaces tab-mark))
  :diminish whitespace-mode
  :hook (((prog-mode yaml-mode) . whitespace-mode)))

(use-package yaml-mode
  :ensure t)

(use-package yasnippet
  :config
  (yas-global-mode 1)
  :diminish yas-minor-mode
  :ensure t)

;;; init.el ends here
