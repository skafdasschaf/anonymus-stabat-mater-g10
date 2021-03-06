% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

\include "../definitions.ly"

\paper {
	indent = 1\cm
	top-margin = 1.5\cm
	system-separator-markup = ##f
	system-system-spacing =
    #'((basic-distance . 18)
       (minimum-distance . 18)
       (padding . -100)
       (stretchability . 0))

	top-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 12)
       (padding . -100)
       (stretchability . 0))

	top-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -100)
       (stretchability . 0))

	markup-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 12)
       (padding . -100)
       (stretchability . 0))

	systems-per-page = #9
}

#(set-global-staff-size 17.82)

\layout {
	\context {
		\Staff
		instrumentName = "vl 1"
	}
}

\book {
	\bookpart {
		\header {
			title = "S T A B A T   M A T E R   D O L O R O S A"
		}
		\paper { indent = 2\cm }
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Violino I"
					\StabatMaterViolinoI
				}
			>>
		}
	}
	\bookpart {
		\header {
			subtitle = "O   Q U A M   T R I S T I S   E T   A F F L I C T A"
		}
		\score {
			<<
				\new Staff { \OQuamViolinoI }
			>>
		}
	}
	\bookpart {
		\header {
			subtitle = "E I A,   M A T E R,   F O N S   A M O R I S"
		}
		\paper { page-count = #3 }
		\score {
			<<
				\new Staff { \EiaMaterViolinoI }
			>>
		}
	}
	\bookpart {
		\header {
			subtitle = "V I R G O   V I R G I N U M   P R A E C L A R A"
		}
		\score {
			<<
				\new Staff { \VirgoViolinoI }
			>>
		}
	}
	\bookpart {
		\header {
			subtitle = "C H R I S T E,   C U M   S I T   H I N C   E X I R E"
		}
		\score {
			<<
				\new Staff { \ChristeViolinoI }
			>>
		}
	}
	\bookpart {
		\header {
			subtitle = "A M E N"
		}
		\paper { systems-per-page = #6 }
		\score {
			<<
				\new Staff { \AmenViolinoI }
			>>
		}
	}
}
