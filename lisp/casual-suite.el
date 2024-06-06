;;; casual-suite.el --- A suite of opinionated Transient UIs -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Charles Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; URL: https://github.com/kickingvegas/casual-suite
;; Keywords: tools
;; Version: 1.0.2
;; Package-Requires: ((casual "1.5.0") (cc-isearch-menu "1.4.1") (casual-dired "1.2.0") (casual-avy "1.0.5") (casual-info "1.0.3") (emacs "29.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; An umbrella package to support a single installation point for all Casual
;; porcelains. Included are porcelains for the following packages:

;; - Calc (casual)
;; - I-Search (cc-isearch-menu)
;; - Dired (casual-dired)
;; - Avy (casual-avy)
;; - Info (casual-info)

;; INSTALLATION

;; As this is an umbrella package, it is highly recommended that a deep reading
;; of the install procedure for each porcelain be done beforehand as each of
;; them have their own recommended customizations to go alongside them.
;; https://github.com/kickingvegas/casual-suite

;; The following code is a TL;DR initialization for Casual Suite.
;; (require 'casual-suite)
;; (define-key calc-mode-map (kbd "C-o") #'casual-calc-tmenu)
;; (define-key dired-mode-map (kbd "C-o") #'casual-dired-tmenu)
;; (define-key info-mode-map (kbd "C-o") #'casual-info-tmenu)
;; (keymap-global-set "M-g" #'casual-avy-tmenu)
;; (define-key isearch-mode-map (kbd "<f2>") 'cc-isearch-menu-transient)

;;; Code:

(require 'casual)
(require 'casual-dired)
(require 'casual-avy)
(require 'casual-info)
(require 'cc-isearch-menu)

(defun casual-suite-about-suite ()
  "Casual Suite is a collection of all Casual porcelains.

This is an umbrella package that collects all the Casual packages.
Included are porcelains for the following packages:

- Calc (Casual)
- I-Search (cc-isearch-menu)
- Dired (Casual Dired)
- Avy (Casual Avy)

Learn more about using Casual Suite at our discussion group on GitHub.
Any questions or comments about it should be made there.
URL `https://github.com/kickingvegas/casual-suite/discussions'

If you find a bug or have an enhancement request, please file an issue.
Our best effort will be made to answer it.
URL `https://github.com/kickingvegas/casual-suite/issues'

If you enjoy using Casual Suite, consider making a modest financial
contribution to help support its development and maintenance.
URL `https://www.buymeacoffee.com/kickingvegas'

Casual Suite was conceived and crafted by Charles Choi in
San Francisco, California.

Thank you for using Casual Suite.

Always choose love."
  (ignore))

(defun casual-suite-about ()
  "About information for Casual Suite."
  (interactive)
  (describe-function #'casual-suite-about-suite))

(provide 'casual-suite)
;;; casual-suite.el ends here
