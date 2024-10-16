(use-package restclient)

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc")
  :config
  (add-hook 'gfm-mode-hook 'linum-mode)
  (add-hook 'markdown-mode-hook 'linum-mode))

(use-package nvm
  ;; :straight (:host github :repo "rejeep/nvm.el")
  :config
  (nvm-use "20"))

(use-package web-mode
  :mode (("\\.html?\\'" . web-mode)
         ("\\.css\\'"   . web-mode)
         ("\\.json\\'"  . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2))

(use-package javascript-mode
  :mode (("\\.js\\'" . javascript-mode)
         ("\\.mjs\\'"   . javascript-mode))
  :config
  (setq js-indent-level 4)
  (setq-default js2-basic-offset 4)
  (setq javascript-mode-code-indent-offset 4))

(use-package yaml-mode)

(use-package json-mode)

(use-package elixir-mode)

(use-package k8s-mode
  :hook (k8s-mode . yas-minor-mode))

(use-package dockerfile-mode
  :config
  (require 'dockerfile-mode)
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))

(use-package rustic
  :mode ("\\.rs\\'" . rustic-mode)
  :config
  (setq rustic-format-trigger 'on-save))

(setq lsp-rust-analyzer-server-command '("~/.cargo/bin/rust-analyzer"))

(provide 'init-code)
