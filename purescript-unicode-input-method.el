;;; purescript-unicode-input-method.el --- PureScript Unicode helper functions  -*- coding: utf-8 -*-

;; Copyright (C) 2010-2011  Roel van Dijk

;; Author: Roel van Dijk <vandijk.roel@gmail.com>

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'quail)

;;;###autoload
(defun turn-on-purescript-unicode-input-method ()
  "Set input method `purescript-unicode'.
See Info node `Unicode(purescript-mode)' for more details."
  (interactive)
  (set-input-method "purescript-unicode"))

(quail-define-package
 "purescript-unicode" ;; name
 "UTF-8"           ;; language
 "\\"              ;; title
 t                 ;; guidance
 "PureScript Unicode input method.
Designed to be used with the PureScript UnicodeSyntax language
extension in combination with the x-unicode-symbols set of
packages (base-unicode-symbols and containers-unicode-symbols).
"                  ;; docstring
 nil              ;; translation-keys
 nil              ;; forget-last-selection
 nil              ;; deterministic
 nil              ;; kbd-translate
 nil              ;; show-layout
 nil              ;; create-decode-map
 nil              ;; maximum-shortest
 nil              ;; overlay-plist
 nil              ;; update-translation-function
 nil              ;; conversion-keys
 t                ;; simple
 )

(quail-define-rules
 ;; Greek letters
 ("alpha "           ["α"])
 ("Alpha "           ["Α"])
 ("beta "            ["β"])
 ("Beta "            ["Β"])
 ("gamma "           ["γ"])
 ("Gamma "           ["Γ"])
 ("delta "           ["δ"])
 ("Delta "           ["Δ"])
 ("epsilon "         ["ε"])
 ("Epsilon "         ["Ε"])
 ("zeta "            ["ζ"])
 ("Zeta "            ["Ζ"])
 ("eta "             ["η"])
 ("Eta "             ["Η"])
 ("theta "           ["θ"])
 ("Theta "           ["Θ"])
 ("iota "            ["ι"])
 ("Iota "            ["Ι"])
 ("kappa "           ["κ"])
 ("Kappa "           ["Κ"])
 ("lambda "          ["λ"])
 ("Lambda "          ["Λ"])
 ("lamda "           ["λ"])
 ("Lamda "           ["Λ"])
 ("mu "              ["μ"])
 ("Mu "              ["Μ"])
 ("nu "              ["ν"])
 ("Nu "              ["Ν"])
 ("xi "              ["ξ"])
 ("Xi "              ["Ξ"])
 ("omicron "         ["ο"])
 ("Omicron "         ["Ο"])
 ("pi "              ["π"])
 ("Pi "              ["Π"])
 ("rho "             ["ρ"])
 ("Rho "             ["Ρ"])
 ("sigma "           ["σ"])
 ("Sigma "           ["Σ"])
 ("tau "             ["τ"])
 ("Tau "             ["Τ"])
 ("upsilon "         ["υ"])
 ("Upsilon "         ["Υ"])
 ("phi "             ["φ"])
 ("Phi "             ["Φ"])
 ("chi "             ["χ"])
 ("Chi "             ["Χ"])
 ("psi "             ["ψ"])
 ("Psi "             ["Ψ"])
 ("omega "           ["ω"])
 ("Omega "           ["Ω"])
 ("digamma "         ["ϝ"])
 ("Digamma "         ["Ϝ"])
 ("san "             ["ϻ"])
 ("San "             ["Ϻ"])
 ("qoppa "           ["ϙ"])
 ("Qoppa "           ["Ϙ"])
 ("sampi "           ["ϡ"])
 ("Sampi "           ["Ϡ"])
 ("stigma "          ["ϛ"])
 ("Stigma "          ["Ϛ"])
 ("heta "            ["ͱ"])
 ("Heta "            ["Ͱ"])
 ("sho "             ["ϸ"])
 ("Sho "             ["Ϸ"])

 ;; Double-struck letters
 ("|A|"              ["𝔸"])
 ("|B|"              ["𝔹"])
 ("|C|"              ["ℂ"])
 ("|D|"              ["𝔻"])
 ("|E|"              ["𝔼"])
 ("|F|"              ["𝔽"])
 ("|G|"              ["𝔾"])
 ("|H|"              ["ℍ"])
 ("|I|"              ["𝕀"])
 ("|J|"              ["𝕁"])
 ("|K|"              ["𝕂"])
 ("|L|"              ["𝕃"])
 ("|M|"              ["𝕄"])
 ("|N|"              ["ℕ"])
 ("|O|"              ["𝕆"])
 ("|P|"              ["ℙ"])
 ("|Q|"              ["ℚ"])
 ("|R|"              ["ℝ"])
 ("|S|"              ["𝕊"])
 ("|T|"              ["𝕋"])
 ("|U|"              ["𝕌"])
 ("|V|"              ["𝕍"])
 ("|W|"              ["𝕎"])
 ("|X|"              ["𝕏"])
 ("|Y|"              ["𝕐"])
 ("|Z|"              ["ℤ"])
 ("|gamma|"          ["ℽ"])
 ("|Gamma|"          ["ℾ"])
 ("|pi|"             ["ℼ"])
 ("|Pi|"             ["ℿ"])

 ;; Types
 (" :: "               [" ∷ "])

 ;; Quantifiers
 ("forall"             ["∀"])

 ;; Arrows
 (" -> "               [" → "])
 (" <- "               [" ← "])

 (" => "               [" ⇒ "])

 (" >>= "              [" ⤜ "])
 (" =<< "              [" ⤛ "])

 (" >=> "              [" ⤖ "])
 (" <=< "              [" ⬻ "])

 (" ~> "               [" ⟿ "])

 ;; Boolean operators
 (" not "              [" ¬ "])
 (" && "               [" ∧ "])
 (" || "               [" ∨ "])

 ;; Relational operators
 (" == "               [" ≡ "])
 (" /= "               [" ≢ " " ≠ "])
 (" >= "               [" ≥ "])
 ;; ("<="               ["≤"])

 ;; Arithmetic
 ;; (" / "              [" ÷ "])
 ;; (" * "              [" ⋅ "])

 ;; Containers / Collections
 ("~++"                ["⧺"])
 ("~+++"               ["⧻"])
 ("~|||"               ["⫴"])

 ("~elem "             ["∈"])
 ("~notElem "          ["∉"])
 ("~member "           ["∈"])
 ("~notMember "        ["∉"])
 ("~union "            ["∪"])
 ("~intersection "     ["∩"])
 ("~isSubsetOf "       ["⊆"])
 ("~isProperSubsetOf " ["⊂"])

 ("~either"           ["⨿"])
 ("~coproduct"        ["⊕"])

 ("~Tuple"            ["×"])

 ;; Composition
 (" . "               [" ∘ "])
 ("<<<"               ["⋘"])
 (">>>"               ["⋙"])

 ("~append"           ["◇"])
 ("~alt"              ["⫶"])
 ("~ap "              ["⊛"])
 ("~map "             ["⊙"])

 ("~<|>"              ["⫶"])
 ("~<*>"              ["⊛"])
 ("~<$>"              ["⊙"])

 ("~apFst"            ["⪪"])
 ("~apSnd"            ["⪫"])

 ("~mapFst"           ["⪦"])
 ("~mapSnd"           ["⪧"])

 ("~not"              ["‼"])
 ("~neg"              ["∸"])

 ("~add"              ["⊕"])
 ("~sub"              ["⊖"])
 ("~mul"              ["⊗"])
 ("~div"              ["⊘"])

 ("~undefined"        ["⊥"])

 ("~and"              ["⊼"])
 ("~or"               ["⊻"])

 ("~ids"              ["⏘"])
 ("~idm"              ["⏙"])

 ("~eq"               ["≈"])
 ("~neq"              ["≉"])
 ("~ge"               ["≽"])
 ("~gt"               ["≻"])
 ("~le"               ["≼"])
 ("~lt"               ["≺"])

 ("~in"               ["∈"])
 ("~is"               ["⍨"])

 ("~parens"           ["⏝"])

 ("~tiel"             ["⋉"])
 ("~tier"             ["⋊"])
 ("~square"           ["⌗"])
 ("~bullet"           ["∙"])
 ("~therefore"        ["∴"])
 ("~because"          ["∵"])
 ("~dotminus"         ["∸"])

 ;; Numeric subscripts
 ("~0 "              ["₀"])
 ("~1 "              ["₁"])
 ("~2 "              ["₂"])
 ("~3 "              ["₃"])
 ("~4 "              ["₄"])
 ("~5 "              ["₅"])
 ("~6 "              ["₆"])
 ("~7 "              ["₇"])
 ("~8 "              ["₈"])
 ("~9 "              ["₉"])

 ;; Numeric superscripts
 ("^0 "              ["⁰"])
 ("^1 "              ["¹"])
 ("^2 "              ["²"])
 ("^3 "              ["³"])
 ("^4 "              ["⁴"])
 ("^5 "              ["⁵"])
 ("^6 "              ["⁶"])
 ("^7 "              ["⁷"])
 ("^8 "              ["⁸"])
 ("^9 "              ["⁹"])

 ;; Latin capital letter superscripts
 ("^A "              ["ᴬ"])
 ("^B "              ["ᴮ"])
 ("^D "              ["ᴰ"])
 ("^E "              ["ᴱ"])
 ("^G "              ["ᴳ"])
 ("^H "              ["ᴴ"])
 ("^I "              ["ᴵ"])
 ("^J "              ["ᴶ"])
 ("^K "              ["ᴷ"])
 ("^L "              ["ᴸ"])
 ("^M "              ["ᴹ"])
 ("^N "              ["ᴺ"])
 ("^O "              ["ᴼ"])
 ("^P "              ["ᴾ"])
 ("^R "              ["ᴿ"])
 ("^T "              ["ᵀ"])
 ("^U "              ["ᵁ"])
 ("^V "              ["ⱽ"])
 ("^W "              ["ᵂ"])
 ("^R "              ["ᴿ"])

 ;; Latin miniscule letter superscripts
 ("^a "              ["ᵃ"])
 ("^b "              ["ᵇ"])
 ("^c "              ["ᶜ"])
 ("^d "              ["ᵈ"])
 ("^e "              ["ᵉ"])
 ("^f "              ["ᶠ"])
 ("^g "              ["ᵍ"])
 ("^h "              ["ʰ"])
 ("^i "              ["ⁱ"])
 ("^j "              ["ʲ"])
 ("^k "              ["ᵏ"])
 ("^l "              ["ˡ"])
 ("^m "              ["ᵐ"])
 ("^n "              ["ⁿ"])
 ("^o "              ["ᵒ"])
 ("^p "              ["ᵖ"])
 ("^r "              ["ʳ"])
 ("^s "              ["ˢ"])
 ("^t "              ["ᵗ"])
 ("^u "              ["ᵘ"])
 ("^v "              ["ᵛ"])
 ("^w "              ["ʷ"])
 ("^x "              ["ˣ"])
 ("^y "              ["ʸ"])
 ("^z "              ["ᶻ"])

 ;; Greek letter superscripts
 ("^alpha "              ["ᵅ"])
 ("^beta "               ["ᵝ"])
 ("^gamma "              ["ᵞ"])
 ("^delta "              ["ᵟ"])
 )

(provide 'purescript-unicode-input-method)

;;; purescript-unicode-input-method.el ends here
