;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     clojure
     colors
     deft
     elixir
     emacs-lisp
     git
     go
     haskell
     html
     ipython-notebook
     jabber
     javascript
     lua
     markdown
     ocaml
     org
     osx
     python
     racket
     rcirc
     restclient
     rust
     scala
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     shell-scripts
     sml
     sql
     syntax-checking
     version-control)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(beacon
                                      emms
                                      emms-mode-line-cycle
                                      go-direx
                                      go-errcheck
                                      go-playground
                                      helm-emms
                                      helm-pt
                                      hl-todo
                                      howdoi
                                      jdee
                                      julia-mode
                                      julia-shell
                                      w3m
                                      yaml-mode)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(zenburn
                         darktooth
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 10
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil))

(defun define-keys (mode-map key-fn-pairs)
  (mapc (lambda (key-fn)
          (let ((key (kbd (car key-fn)))
                (function (car (cdr key-fn))))
            (define-key mode-map key function)))
        key-fn-pairs))

(defun apply-fn-to-modes (fn modes)
  (mapc (lambda (mode)
          (add-hook (intern (format "%s-hook" (symbol-name mode)))
                    fn))
        modes))

(defun add-hooks (mode-hook functions)
  (mapc (lambda (function)
          (add-hook mode-hook function))
        functions))

(defun remove-hooks (mode-hook functions)
  (mapc (lambda (function)
          (remove-hook mode-hook function))
        functions))

(defun vi-style-c-e (n)
  "Emulate vi's CTRL-E (show one more line at bottom of window)."
  (interactive "p")
  (scroll-up n))

(defun vi-style-c-y (n)
  "Emulate vi's CTRL-Y (show one more line at top of window.)"
  (interactive "p")
  (scroll-down n))

(defun go-get-project-root (go-path-src go-project-root)
  "Return the name of the Go project. e.g. github.com/gorilla/context"
  (if (string-prefix-p go-path-src go-project-root)
      (let* ((no-trailing-slash (s-chop-suffix "/" go-project-root))
             (go-project-root-short (s-chop-prefix go-path-src no-trailing-slash)))
        go-project-root-short)))

(defun go-set-oracle-scope ()
  "Update Go Oracle scope if the current project is a Go project."
  (interactive)
  (let* ((go-path-src (concat (getenv "GOPATH") "/src/"))
         (go-project-root (go-get-project-root go-path-src (projectile-project-root))))
    (if go-project-root
        (progn
          (setq go-oracle-scope go-project-root)
          (message (concat "Go Oracle scope set to " go-project-root))))))

(defun go-errcheck-project ()
  "Run errcheck recursively from the current project directory."
  (interactive)
  (let* ((go-path-src (concat (getenv "GOPATH") "/src/"))
         (go-project-root (go-get-project-root go-path-src (projectile-project-root))))
    (go-errcheck-pkg (concat go-project-root "/...") nil nil nil)))

(defun vc-annotate-current-buffer-head ()
  "Run vc-annotate on the current buffer."
  (vc-annotate (buffer-file-name) "HEAD"))

(defun focus-then-maximise (buf-name)
  "Focus the buffer specified then maximise."
  (interactive)
  (progn
    (switch-to-buffer buf-name)
    (delete-other-windows)))

(defun unbind-rebind-key (mode-map key new-func)
  "Unbinding and rebind the key with the given function."
  (define-key mode-map key nil)
  (define-key mode-map key new-func))

(defun eshell-clear-buffer ()
  "Emulate clear inside eshell."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

;; Package settings: eshell-mode
(defun bind-eshell-clear-buffer ()
  (local-set-key (kbd "C-l") 'eshell-clear-buffer))

(defun switch-to-previous-buffer ()
  "Switch to the previous buffer."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; On OS X, remap left Command to Meta
  (setq mac-option-modifier 'meta
        mac-command-modifier 'meta
        mac-right-command-modifier 'super
        mac-function-modifier 'hyper)
  ;; Fullscreen
  (set-frame-parameter nil 'fullscreen 'fullboth)
  ;; Overwrite highlighted
  (delete-selection-mode t)
  ;; Remove trailing whitespace on save
  (add-to-list 'write-file-functions 'delete-trailing-whitespace)
  ;; Web browser
  (setq browse-url-browser-function 'browse-url-generic
        engine/browser-function 'browse-url-generic
        browse-url-generic-program "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")
  ;; Powerline: current time
  (setq display-time-string-forms
        '((substring year -4)
          "-"
          (format "%02d" (string-to-number month))
          "-"
          (format "%02d" (string-to-number day))
          " "
          24-hours
          ":"
          minutes))
  (display-time-mode t)
  ;; Powerline: battery life
  (fancy-battery-mode t)
  ;; Powerline: separator style
  (setq powerline-default-separator 'arrow)

  ;; Package settings: anzu
  (use-package anzu
    :defer t
    :config
    (global-anzu-mode t))
  ;; Package settings: deft
  (use-package deft
    :defer t
    :init
    (setq deft-recursive t
          deft-use-filename-as-title t)
    :config
    (progn
      (unbind-key (kbd "f") deft-mode-map)
      (define-keys deft-mode-map
        '(("C-k" deft-filter-clear)
          ("M-q" ibuffer-quit)))))
  (advice-add 'deft :after 'deft-filter-clear)
  (advice-add 'deft :after 'deft-refresh)
  ;; Package settings: emms
  (use-package emms
    :defer t
    :config
    (progn
      (require 'emms-setup)
      (require 'emms-mode-line-cycle)
      (require 'emms-mode-line-icon)
      (emms-all)
      (emms-default-players)
      (emms-mode-line-enable)
      (emms-playing-time-disable-display)
      (emms-mode-line-cycle 1)))
  ;; Package settings: go-mode
  (use-package go-mode
    :defer t
    :init
    (setq gofmt-command "goimports")
    :config
    (progn
      (require 'go-errcheck)
      (push '("^\*go-direx:"
              :regexp t
              :position right
              :width 0.5
              :dedicated t
              :stick t)
            popwin:special-display-config)
      (unbind-rebind-key go-mode-map (kbd "C-c C-j") 'go-direx-switch-to-buffer)
      (define-keys go-mode-map
        '(("M-." godef-jump)
          ("M-," pop-tag-mark)
          ("C-c C-e" go-errcheck-project)
          ("C-c C-p" go-playground)))
      (evil-leader/set-key-for-mode 'go-mode
        "mjp" 'go-direx-pop-to-buffer
        "mjs" 'go-direx-switch-to-buffer
        "mE" 'go-errcheck-project)))
  ;; Package settings: jdee
  (use-package jdee
    :defer t
    :init
    (setq jdee-server-dir "~/src/jdee-server/target")
    :load-path "~/src/jdee-server/target"
    :config
    (progn
      (define-keys jdee-mode-map
        '(("M-." jdee-open-class-at-point)
          ("M-," pop-tag-mark)))))
  ;; Package settings: julia-mode
  (use-package julia-mode
    :defer t
    :config
    (progn
      (require 'julia-shell)
      (define-keys julia-mode-map
        '(("C-c C-z" run-julia)
          ("C-c C-c" julia-shell-run-region-or-line)
          ("C-c C-s" julia-shell-save-and-go)))))
  ;; Package settings: neotree
  (use-package neotree
    :defer t
    :init
    (setq neo-show-hidden-files nil
          neo-persist-show t)
    :config
    (progn
      (define-keys neotree-mode-map
        '(("o" neotree-enter)))
      (global-set-key [f8] 'neotree-find)))
  ;; Package settings: python-mode
  (use-package python
    :defer t
    :init
    (setq fci-rule-column 99)
    :config
    (progn
      (evil-leader/set-key-for-mode 'python-mode
        "mf" 'py-yapf-buffer)))
  ;; Package settings: smartparens
  (use-package smartparens
    :defer t
    :config
    (apply-fn-to-modes 'smartparens-strict-mode
                       sp--lisp-modes)
    (define-keys sp-keymap
      '(("C-M-a" sp-backward-down-sexp)
        ("C-M-e" sp-up-sexp)
        ("C-M-n" sp-next-sexp)
        ("C-M-p" sp-previous-sexp)
        ("C-]" sp-select-next-thing-exchange)
        ("C-M-]" sp-select-next-thing))))
  ;; Package settings: yaml-mode
  (use-package yaml-mode
    :defer t
    :config
    (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode)))

  ;; Hooks added: programming modes
  (add-hooks 'prog-mode-hook
             '(beacon-mode
               eldoc-mode
               hl-todo-mode
               linum-mode
               rainbow-delimiters-mode))
  ;; Hooks added: Eshell mode
  (add-hooks 'eshell-mode-hook
             '(bind-eshell-clear-buffer))
  ;; Hooks added: Python mode
  (add-hooks 'python-mode-hook
             '(fci-mode))
  ;; Hooks removed: Go mode
  (remove-hooks 'go-mode-hook
                '(flycheck-mode))
  ;; Hooks removed: Org mode
  (remove-hooks 'org-mode
                '(smartparens-mode))

  ;; Occupy entire frame
  (advice-add 'gh-md-render-buffer :after (apply-partially 'focus-then-maximise "*gh-md*"))
  (advice-add 'helm-projectile-switch-project :after 'go-set-oracle-scope)
  (advice-add 'magit-log-all :after 'delete-other-windows)
  (advice-add 'magit-log-head :after 'delete-other-windows)
  (advice-add 'magit-show-refs-head :after 'delete-other-windows)
  (advice-add 'magit-status :after 'delete-other-windows)
  (advice-add 'vc-annotate-current-buffer-head :after 'delete-other-windows)

  ;; Custom key bindings: global
  (define-keys global-map
    '(("C-c C-j" helm-imenu)
      ("C-x '" switch-to-previous-buffer)
      ("C-x -" split-window-below-and-focus)
      ("C-x \\" split-window-right-and-focus)
      ("C-x l" delete-other-windows)
      ("C-x n" other-window)
      ("C-x p" previous-multiframe-window)
      ("C-x q" delete-window)
      ("C-x |" split-window-right-and-focus)
      ("M-SPC" shell-pop-eshell)
      ("M-[" beginning-of-defun)
      ("M-]" end-of-defun)
      ("M-n" vi-style-c-e)
      ("M-p" vi-style-c-y)
      ("RET" newline-and-indent)))
  ;; Custom key bindings: SPC shortcuts
  (define-keys evil-leader--default-map
    '(("M-m" avy-goto-word-or-subword-1)
      ("a m e h" helm-emms)
      ("a m e p" emms-start)
      ("a m e s" emms-stop)
      ("g a" vc-annotate-current-buffer-head)
      ("g M" magit-show-refs-head)
      ("g l" magit-log-head)
      ("h o" helm-occur)
      ("p P" projectile-test-project)
      ("p s s" helm-projectile-ag)
      ("p s p" helm-projectile-pt)
      ("p u" projectile-run-project)
      ("s q" howdoi-query)
      ("x c m" mc/mark-all-like-this))))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(deft-auto-save-interval 0.0)
 '(deft-directory "~/Dropbox/.deft")
 '(emms-mode-line-cycle-max-width 13)
 '(emms-mode-line-cycle-use-icon-p t)
 '(magit-log-arguments (quote ("-n256" "--graph" "--decorate" "--color")))
 '(neo-persist-show t)
 '(neo-show-hidden-files nil)
 '(neo-theme (quote ascii)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#DCDCCC" :background "#3F3F3F"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
