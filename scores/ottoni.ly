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
    #'((basic-distance . 17)
       (minimum-distance . 17)
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

	last-bottom-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 1.0e7))

	systems-per-page = #6
}

#(set-global-staff-size 17.82)

\layout {
	\context {
		\GrandStaff
		instrumentName = "clno"
		\override StaffGrouper.staffgroup-staff-spacing =
			#'((basic-distance . 12)
				(minimum-distance . 12)
				(padding . -100)
				(stretchability . 0))
		\override StaffGrouper.staff-staff-spacing =
			#'((basic-distance . 12)
				(minimum-distance . 12)
				(padding . -100)
				(stretchability . 0))

	}
	\context {
		\Staff
		instrumentName = "timp"
	}
}


\book {
	\bookpart {
		\header {
			title = "S T A B A T   M A T E R   D O L O R O S A"
		}
		\paper {
			indent = 2\cm
			systems-per-page = #4
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = \markup { \center-column { "Clarino" "in C" } }
						\new Staff {
							\set Staff.instrumentName = "I"
							\StabatMaterClarinoI
						}
						\new Staff {
							\set Staff.instrumentName = "II"
							\StabatMaterClarinoII
						}
					>>
				>>
			>>
		}
	}
	\bookpart {
		\header {
			subtitle = "E I A,   M A T E R,   F O N S   A M O R I S"
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "clno"
						\new Staff {
							\set Staff.instrumentName = "1"
							\EiaMaterClarinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\EiaMaterClarinoII
						}
					>>
				>>
			>>
		}
	}
	\bookpart {
		\header {
			subtitle = "A M E N"
		}
		\paper { systems-per-page = #3 }
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "clno"
						\new Staff {
							\set Staff.instrumentName = "1"
							\AmenClarinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\AmenClarinoII
						}
					>>
				>>
			>>
		}
	}
}
