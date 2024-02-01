module LaTeXMeasures

export INCHES_PER_PT
export REVTEX_TEXT_WIDTH_PT, REVTEX_COLUMN_WIDTH_PT
export FIG_PX_COLUMN, FIG_PX_TEXT
export THESIS_WIDTH_PX

const GOLDEN_MEAN = (sqrt(5)-1.0)/2.0         # Aesthetic ratio
const INCHES_PER_PT = 1.0/72.27

const DPI = 100     # LEAVE THIS AT 100, for correct rendering with Plots.jl

const REVTEX_TEXT_WIDTH_PT = 510.0    # Get this from LaTeX using \the\textwidth
const REVTEX_COLUMN_WIDTH_PT = 246.0  # Get this from LaTeX using \the\columnwidth

const REVTEX_TEXT_WIDTH_PX = REVTEX_TEXT_WIDTH_PT * INCHES_PER_PT * DPI
const REVTEX_COLUMN_WIDTH_PX = REVTEX_COLUMN_WIDTH_PT * INCHES_PER_PT * DPI

const FIG_PX_TEXT = REVTEX_TEXT_WIDTH_PX .* [1, GOLDEN_MEAN]
const FIG_PX_COLUMN = REVTEX_COLUMN_WIDTH_PX .* [1, GOLDEN_MEAN]

const THESIS_WIDTH_POINTS = 437.46112
const THESIS_WIDTH_PX = THESIS_WIDTH_POINTS * INCHES_PER_PT * DPI


end # module
