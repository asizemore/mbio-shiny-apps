## Running app locally

# Sets the working directory
setwd("~/Documents")

# Source the functions we need to run the shiny apps
source("shiny/apps/app_functions.R")


# Alpha Diversity
runAlphaDiversityApp(taxa_abundance_path = "~/Documents/data/TaxaRelativeAbundance.txt",
                     sample_path = '~/Documents/data/Characteristics.txt',
                     datasets_path = '~/Documents/data/Datasets.txt')

# Beta Diversity
runBetaDiversityApp(taxa_abundance_path = "~/Documents/data/TaxaRelativeAbundance.txt",
                     sample_path = '~/Documents/data/Characteristics.txt',
                     datasets_path = '~/Documents/data/Datasets.txt')

# Relative Abundance
runRelativeAbundanceApp(taxa_abundance_path = "~/Documents/data/TaxaRelativeAbundance.txt",
                     sample_path = '~/Documents/data/Characteristics.txt',
                     datasets_path = '~/Documents/data/Datasets.txt')

# Differential Abundance
runDifferentialAbundanceApp(taxa_abundance_path = "~/Documents/data/TaxaRelativeAbundance.txt",
                     sample_path = '~/Documents/data/Characteristics.txt',
                     datasets_path = '~/Documents/data/Datasets.txt')

# Correlation
runCorrelationApp(taxa_abundance_path = "~/Documents/data/TaxaRelativeAbundance.txt",
                     sample_path = '~/Documents/data/Characteristics.txt',
                     datasets_path = '~/Documents/data/Datasets.txt')
