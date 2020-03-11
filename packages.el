(setq macros-packages '((clojure-macros :location local)
                        (php-macros :location local)
                        (smarty-macros :location local)))

(defun macros/init-clojure-macros ()
    (use-package clojure-macros))

(defun macros/init-php-macros ()
  (use-package php-macros
    :init (progn
            (spacemacs/declare-prefix-for-mode 'php-mode "mR" "Refactor" "REFACTAR")
            (spacemacs/set-leader-keys-for-major-mode 'php-mode "Rm" 'php-extract))
    ))

(defun macros/init-smarty-macros ()
    (use-package smarty-macros))
