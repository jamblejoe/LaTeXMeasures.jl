module LaTeXMeasures

export INCHES_PER_PT, MM_PER_PT, TEXT_WIDTH, COLUMN_WIDTH
export FIG_PX_COLUMN, FIG_PX_TEXT

const GOLDEN_MEAN = (sqrt(5)-1.0)/2.0         # Aesthetic ratio
const INCHES_PER_PT = 1.0/72.27
const MM_PER_PT = 0.352778

const TEXT_WIDTH_PT = 510.0    # Get this from LaTeX using \the\textwidth
const COLUMN_WIDTH_PT = 246.0  # Get this from LaTeX using \the\columnwidth

const DPI = 100     # LEAVE THIS AT 100, for correct rendering with Plots.jl


const COLUMN_WIDTH_INCH = COLUMN_WIDTH_PT * INCHES_PER_PT
const FIG_PX_COLUMN = [COLUMN_WIDTH_INCH, COLUMN_WIDTH_INCH * GOLDEN_MEAN] .* DPI

const TEXT_WIDTH_INCH = TEXT_WIDTH_PT * INCHES_PER_PT
const FIG_PX_TEXT = [TEXT_WIDTH_INCH, COLUMN_WIDTH_INCH * GOLDEN_MEAN] .* DPI

end # module
