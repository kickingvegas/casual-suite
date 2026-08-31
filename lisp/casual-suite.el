;;; casual-suite.el --- A suite of opinionated Transient UIs -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026  Charles Choi

;; Author: Charles Choi <kickingvegas@gmail.com>
;; URL: https://github.com/kickingvegas/casual-suite
;; Keywords: tools
;; Version: 3.0.1-rc.1
;; Package-Requires: ((emacs "30.1") (casual-avy "3.0.0") (casual-symbol-overlay "3.0.0"))

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

;; Casual Suite is an umbrella package to support a single installation point
;; for all Casual user interfaces for Emacs.

;; INSTALL

;; Casual Suite versions 3.0 or greater offer a simplified installation with the
;; command `casual-suite-init'. By default this command will setup interfaces
;; for all supported Casual modules, both built-in modes/modules and 3^{rd}
;; party. Run this via `execute-execute-command' (M-x) or add the following
;; Elisp to your Emacs initialization file.

;;   (require 'casual-suite)
;;   (casual-suite-init)

;; Note that `casual-suite-init' will only work if Casual Suite is installed via
;; `package-install'.

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
