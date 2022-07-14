;; Spacemacs leader key stuff
(spacemacs/set-leader-keys "wh" 'evil-window-right)
(spacemacs/set-leader-keys "wa" 'evil-window-left)
(spacemacs/set-leader-keys "we" 'evil-window-down)
(spacemacs/set-leader-keys "wo" 'evil-window-up)
(define-minor-mode carpalx-compat-mode
  "stops annoying major modes from snagging my keys"
  :global true
  (with-eval-after-load 'help ;;evil help buffer bindin
    (define-key help-mode-map (kbd "a") 'evil-backward-char)
    (define-key help-mode-map (kbd "e") 'evil-next-line)
    (define-key help-mode-map (kbd "o") 'evil-previous-line)
    (define-key help-mode-map (kbd "h") 'evil-forward-char)
    )
  (with-eval-after-load 'dired ;;dired bindings
    (define-key dired-mode-map (kbd "a") 'evil-backward-char)
    (define-key dired-mode-map (kbd "e") 'evil-next-line)
    (define-key dired-mode-map (kbd "o") 'evil-previous-line)
    (define-key dired-mode-map (kbd "h") 'evil-forward-char)
    (define-key dired-mode-map (kbd "C-c md") 'mkdir)
    (define-key dired-mode-map (kbd "C-c dd") 'delete-directory)
    )
  (with-eval-after-load 'org ;;org-mode bindings
    (define-key org-mode-map (kbd "C-c b") 'org-table-blank-field)
    )
  ;;evil normal mode bindings
  (define-key evil-normal-state-map (kbd "a") 'evil-backward-char)
  (define-key evil-normal-state-map (kbd "e") 'evil-next-line)
  (define-key evil-normal-state-map (kbd "o") 'evil-previous-line)
  (define-key evil-normal-state-map (kbd "h") 'evil-forward-char)
  (define-key evil-normal-state-map (kbd "M-o") 'evil-open-below)
  (define-key evil-motion-state-map (kbd "a") 'evil-backward-char)
  (define-key evil-motion-state-map (kbd "e") 'evil-next-line)
  (define-key evil-motion-state-map (kbd "o") 'evil-previous-line)
  (define-key evil-motion-state-map (kbd "h") 'evil-forward-char)
  ;;evil visual mode bindings
  (define-key evil-visual-state-map (kbd "a") 'evil-backward-char)
  (define-key evil-visual-state-map (kbd "e") 'evil-next-line)
  (define-key evil-visual-state-map (kbd "o") 'evil-previous-line)
  (define-key evil-visual-state-map (kbd "h") 'evil-forward-char)
  )
(carpalx-compat-mode 1)
