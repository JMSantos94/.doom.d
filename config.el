;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'rxjs-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

(eval-after-load 'js2-mode
    '(progn
       (add-hook 'js2-mode-hook #'add-node-modules-path)
       (add-hook 'js2-mode-hook #'prettier-js-mode)))

(eval-after-load 'rxjs-mode
    '(progn
       (add-hook 'rxjs-mode-hook #'add-node-modules-path)
       (add-hook 'rxjs-mode-hook #'prettier-js-mode)))

(eval-after-load 'web-mode
    '(progn
       (add-hook 'web-mode-hook #'add-node-modules-path)
       (add-hook 'web-mode-hook #'prettier-js-mode)))
