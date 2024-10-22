;;; casual-suite.el --- A suite of opinionated Transient UIs -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Charles Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; URL: https://github.com/kickingvegas/casual-suite
;; Keywords: tools
;; Version: 2.0.1-rc.1
;; Package-Requires: ((emacs "29.1") (casual "2.0.0") (casual-avy "2.0.0") (casual-symbol-overlay "2.0.0"))

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
;; user interfaces. Included are user interfaces for the following packages:

;; - casual
;;   - Bookmarks (casual-bookmarks)
;;   - Calc (casual-calc)
;;   - Dired (casual-dired)
;;   - EditKit (casual-editkit)
;;   - I-Search (casual-isearch)
;;   - IBuffer (casual-ibuffer)
;;   - Info (casual-info)
;;   - RE-Builder (casual-re-builder)
;;   - Org Agenda (casual-agenda)
;; - Avy (casual-avy)
;; - Symbol Overlay (casual-symbol-overlay)
;;

;; INSTALLATION

;; As this is an umbrella package, it is highly recommended that a deep reading
;; of the install procedure for each user interface be done beforehand as each of
;; them have their own recommended customizations to go alongside them.
;; https://github.com/kickingvegas/casual-suite

;; The following code is a TL;DR initialization for Casual Suite.
;; (require 'casual-suite)
;; (keymap-set calc-mode-map "C-o" #'casual-calc-tmenu)
;; (keymap-set dired-mode-map "C-o" #'casual-dired-tmenu)
;; (keymap-set isearch-mode-map "C-o" #'casual-isearch-tmenu)
;; (keymap-set ibuffer-mode-map "C-o" #'casual-ibuffer-tmenu)
;; (keymap-set ibuffer-mode-map "F" #'casual-ibuffer-filter-tmenu)
;; (keymap-set ibuffer-mode-map "s" #'casual-ibuffer-sortby-tmenu)
;; (keymap-set Info-mode-map "C-o" #'casual-info-tmenu)
;; (keymap-global-set "M-g" #'casual-avy-tmenu)
;; (keymap-set reb-mode-map "C-o" #'casual-re-builder-tmenu)
;; (keymap-set reb-lisp-mode-map "C-o" #'casual-re-builder-tmenu)
;; (keymap-set bookmark-bmenu-mode-map "C-o" #'casual-bookmarks-tmenu)
;; (keymap-set org-agenda-mode-map "C-o" #'casual-agenda-tmenu)
;; (keymap-set symbol-overlay-map "C-o" #'casual-symbol-overlay-tmenu)
;; (keymap-global-set "C-o" #'casual-editkit-main-tmenu)

;; If you are using Emacs ≤ 30.0, you will need to update the built-in package
;; `transient'. By default, `package.el' will not upgrade a built-in package.
;; Set the customizable variable `package-install-upgrade-built-in' to `t' to
;; override this. For more details, please refer to the "Install" section on
;; this project's repository web page.

;;; Code:

(require 'casual-calc)
(require 'casual-dired)
(require 'casual-isearch)
(require 'casual-ibuffer)
(require 'casual-info)
(require 'casual-re-builder)
(require 'casual-avy)
(require 'casual-bookmarks)
(require 'casual-agenda)
(require 'casual-symbol-overlay)
(require 'casual-editkit)

(defun casual-suite-about-suite ()
  "Casual Suite is a collection of all Casual user interfaces.

This is an umbrella package that collects all the Casual packages.
Included are user interfaces for the following packages:

- casual (casual)
  - Org Agenda (casual-agenda)
  - Bookmarks (casual-bookmarks)
  - Calc (casual-calc)
  - Dired (casual-dired)
  - EditKit (casual-editkit)
  - I-Search (casual-isearch)
  - IBuffer (casual-ibuffer)
  - Info (casual-info)
  - RE-Builder (casual-re-builder)
- Avy (casual-avy)
- Symbol Overlay (casual-symbol-overlay)

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
