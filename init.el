
;;
;;             EVIL MODE
;;
;;


;; Emacs directory
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; Package management
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun package-install-with-refresh (package)
  (unless (assq package package-alist)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))

;; Install evil
(package-install-with-refresh 'evil)

;; Enable evil
(require 'evil)
(evil-mode 1)

;;
;;
;;           END EVIL MODE
;;



;;
;;
;;           ADD MELPHA
;;


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


;;
;;
;;           END ADD MELPHA
;;




;;    MY VIM KEYCONFIG
(define-key evil-normal-state-map ";" 'evil-ex)
(define-key evil-insert-state-map "\C-f" 'evil-normal-state)

