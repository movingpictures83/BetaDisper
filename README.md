# BetaDisper
# Language: R
# Input: TXT
# Output: none
# Tested with: PluMA 1.1, R 4.0.0
# Dependency:cultevo_1.0.2, vegan_2.5.7

PluMA plugin that runs BetaDisper (Anderson et al, 2017).

Accepts as input a TXT file of tab-delimited keyword-value pairs:
distancematrix: TSV file of distance matrix
groups: Group corresponding to each sample, line by line

BetaDisper distances are output to the screen, one for each group
