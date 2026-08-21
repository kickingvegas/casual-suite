;;; casual-suite.el --- A suite of opinionated Transient UIs -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026  Charles Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; URL: https://github.com/kickingvegas/casual-suite
;; Keywords: tools
;; Version: 2.0.1-rc.1
;; Package-Requires: ((emacs "29.1") (casual "3.0.0") (casual-avy "2.0.0") (casual-symbol-overlay "2.0.0"))

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


;;; Code:
(require 'casual)
(require 'casual-avy)
(require 'casual-symbol-overlay)

;;;###autoload (autoload 'casual-suite-init "casual-suite" nil t)
(defun casual-suite-init ()
  "Initialize Casual Suite."

  (interactive)
  (add-hook 'casual-init-hook #'casual-avy-init)
  (add-hook 'casual-init-hook #'casual-symbol-overlay-init)

  (casual-init))


(defun casual-suite-about-suite ()
  "Casual Suite is a collection of all Casual user interfaces.

This is an umbrella package that collects all the Casual packages.
Included are user interfaces for the following packages:

TBD

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
